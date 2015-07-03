require 'test_helper'

class BidsControllerTest < ActionController::TestCase
	test "should get create" do
		assert_difference('Bid.count') do

			post :create, 
			bid: {product_id: products(:one).id}, 
			product_id: products(:one).id
		end
		assert_redirected_to products_path
	end

end
