class Product < ActiveRecord::Base
	validates :title, :description ,:image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
	validates_length_of :title, :minimum => 10,:message => 'waaaay tooooo short'
	
	validates :image_url, allow_blank: true, format: {
		with:    %r{\.(gif|jpg|png)\Z}i,
		message: 'not a valid image type for web'
	}
end
