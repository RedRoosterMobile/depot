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
	description: '<p>even better that hip hopößé</p>',
	image_url: 'http://www.nasa.gov/sites/default/files/images/iBook_logo.png',
	price: '49.95'
)

PayType.delete_all

Order.delete_all
LineItem.delete_all

PayType.create(:name => "Check")
PayType.create(:name => "Credit card")
PayType.create(:name => "Purchase order")

#http://www.nasa.gov/sites/default/files/images/iBook_logo.png