

class BidsController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource

	
	def create
		if can? :create, Bid
		@product = Product.find(params[:product_id])
		@bid = @product.bids.build(bid_params)
		@bid.save
			redirect_to root_url
		else
			redirect_to pages_landing_page_path
		end
	end

	private
	def bid_params
		params.require(:bid).permit(:amount)
	end

end
