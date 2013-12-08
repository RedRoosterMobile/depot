# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all


Product.create(
	title: 'Some Product',
	description: '<p>This is an <b>awesome</b> Product</p>',
	image_url: 'http://ecx.images-amazon.com/images/I/41ktBg42ssL._SL75_SS50_.jpg',
	price: '49.95'
)
Product.create(
	title: 'Some Other Product',
	description: 'even better that hip hopößé',
	image_url: 'http://www.nasa.gov/sites/default/files/images/iBook_logo.png',
	price: '49.95'
)

#http://www.nasa.gov/sites/default/files/images/iBook_logo.png