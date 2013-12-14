class Cart < ActiveRecord::Base
	# 2nd. argumaent is a hash {}
	# has_many(name, options = {}, &extension) public
	# aka has_many( :line_items, dependent: :destroy )
	# aka has_many( :line_items, dependent: :destroy )
	hash = {
		dependent: :destroy
	}
	has_many :line_items, dependent: :destroy

	def add_product(product_id)
		product = Product.find(product_id)
		current_item = line_items.find_by_product_id(product_id)
		if current_item
			current_item.quantity += 1
		else
			current_item = line_items.build(product_id: product_id, item_price: product.price)
		end
		current_item
	end

	def total_price
		line_items.to_a.sum {|item| item.total_price}
	end
end
