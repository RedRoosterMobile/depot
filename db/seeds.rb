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
	image_url: 'http://i.computer-bild.de/imgs/7/5/5/6/9/0/Icon-FastStone-Image-Viewer-48x48-0b6f59ac231e5d56.jpeg',
	price: '49.95'
)