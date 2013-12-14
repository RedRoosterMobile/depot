class AddPriceToLineItem < ActiveRecord::Migration
  #def change
  #  add_column :line_items, :item_price, :decimal, :precision => 8, :scale => 2
  #end
  def up
  	add_column :line_items, :item_price, :decimal, :precision => 8, :scale => 2
  	LineItem.reset_column_information
    # add single price to line_litem
    LineItem.all.each do |item| 
    	item.update_attribute :item_price, item.product.price
    	#item.item_price = item.product.price
    	#item.save!
    end

      # count the number of each product in the cart
      #sums = line_items.group(:product_id).sum(:quantity)

      #sums.each do |product_id, quantity|
        #if quantity > 1
          # remove individual items
          #cart.line_items.where(product_id: product_id).delete_all

          # replace with a single item
          #item = cart.line_items.build(product_id: product_id)
          #item.quantity = quantity
          #item.save!
        #end
      #end
    #end
  end

  def down
    #do nothing? row will be dropped anyway
    remove_column :line_items, :item_price
  end
end
