# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
# . . 
Product.create(title: 'Programming Ruby 1.9', 
	description: '<p>Ruby if the fastest growing and most exciting dynamic language</p>',
	image_url: 'http://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Ruby_on_Rails.svg/150px-Ruby_on_Rails.svg.png',
	price: 49.50)