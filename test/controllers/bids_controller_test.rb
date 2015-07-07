require 'test_helper'

class BidsControllerTest < ActionController::TestCase
	include Devise::TestHelpers
	test "should get create bids" do
		user = users(:admin)
		sign_in user

		assert_difference('Bid.count') do
			post :create, 
			bid: {product_id: products(:one).id}, 
			product_id: products(:one).id
		end
		assert_redirected_to root_url
	end

	test "guest without authenication shouldnt create bids" do
		user = users(:guest)
		sign_in user
		post :create, 
			bid: {product_id: products(:one).id}, 
			product_id: products(:one).id

		assert_equal(2, Bid.count)		
		assert_redirected_to pages_landing_page_path 
	end

		test "seller shouldnt create bids" do
		user = users(:seller)
		sign_in user
		post :create, 
			bid: {product_id: products(:one).id}, 
			product_id: products(:one).id

		assert_equal(2, Bid.count)		
		assert_redirected_to pages_landing_page_path 
	end

# test "user should create bids" do
# 	post :create
# 	assert_redirected_to landing_page_path :success
# end

# test "seller shouldnt create bids" do
# 	post :create
# 	assert_redirected_to landing_page_path :success
# end

end
