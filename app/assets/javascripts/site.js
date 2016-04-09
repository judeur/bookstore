$(document).on('ready page:load', function(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
        readOnly: true,
        score: function() {
            return $(this).attr('data-score');
        }
    });
    $('#zoom_07').elevateZoom({
        zoomType: "lens",
        lensShape: "round",
        lensSize: 200,
        onZoomedImageLoaded:function(z){
            $(".zoomLens").bind('mousemove',function(e){
                parent=$(e.target.parentNode);
                x = e.pageX;
                y = e.pageY;
                imgx=parent.position().left;
                imgw=parent.outerWidth();
                imgy=parent.position().top;
                imgh=parent.outerHeight();
                if(x>imgx+imgw||x<imgx||y<imgy||y>imgy+imgh){
                    //for some reason it needs a delay
                    setTimeout(function(){$(".zoomLens").css('display','none');},1);
                }

            });
        }
    });
});