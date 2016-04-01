class ProductUserRating < ActiveRecord::Base
	belongs_to :product
	
	
	def new
	end
	
	def self.rate_product(parmas)
		return false if params[:rating].to_i < 1 or params[:rating].to_i > 5
		product = Product.where(product_id: params[:product_id]).first
		return false if product.nil?
		product_rating = ProductRating.first_or_create(product_id: params[:product_id], user_id: params[:user_id],
																									rating: param[:rating])
	end
end
