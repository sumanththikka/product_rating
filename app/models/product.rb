
class Product < ActiveRecord::Base
	has_many :product_user_rating

	def self.add_product(product_params)
		Product.create!(:name => product_params[:name])
	end
end

