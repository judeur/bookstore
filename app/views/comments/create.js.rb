$('#new_comment').html("Thank you for your review!");
$('.product-reviews').prepend("<%= j render @comment %>");

$('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
$('.rated').raty({ path: '/assets',
                   readOnly: true,
                   score: function() {
                     return $(this).attr('data-score');
                    }
 });