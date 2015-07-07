

class ProductsController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource


	
	def index
		@products = Product.all
	end
end
