# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create({"name"=>"Kafka on the shore", "description"=>"A bewitching and inventive novel", "image_url"=>"something.jpg", "price"=>12.55})
Product.create({"name"=>"Het leven in stukken", "description"=>"A radical breach with realism", "price"=>13.35})
Product.create({"name"=>"The amazing adventures of Kavalier and Clay", "description"=>"An adventure story that will keep you up until 4 am", "image_url"=>"//s3.amazonaws.com/deurvorst1957/bookstore_images/amazingAdventures_big.jpg", "price"=>7.99})
Product.create({"name"=>"My first Sony", "description"=>"Funny, charming and sad", "price"=>6.99})
Product.create({"name"=>"Thinking, fast and slow", "description"=>"A major intellectual event", })User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')