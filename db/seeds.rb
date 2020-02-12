# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Review.destroy_all

p "Creating restaurants..."
resto1 = Restaurant.new(name: "delices d'asie", category: 'chinese', address:'24 rue de Paradis', phone_number: '01 48 23 43 43')
resto2 = Restaurant.new(name: "delices de Tokyo", category: 'japanese', address:'28 rue de Paradis', phone_number: '01 48 23 43 45')
review11 = Review.new(content: "ah oui c'été bon mais un peu épicé", rating: 3, restaurant_id: 1)
review12 = Review.new(content: "bof", rating: 2, restaurant_id: 1)
review21 = Review.new(content: "la vélitable cuisine japonaise", rating: 5, restaurant_id: 2)
review22 = Review.new(content: "c'est japonais les nems ?", rating: 2, restaurant_id: 2)


resto1.save!
resto2.save!
review11.save!
review12.save!
review21.save!
review22.save!

p "Seeds create !"
