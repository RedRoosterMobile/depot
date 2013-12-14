class LineItem < ActiveRecord::Base
	belongs_to :product
	belongs_to :cart
	def total_price
		#product.price * quantity
		item_price * quantity
	end
end
