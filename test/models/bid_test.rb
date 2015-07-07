require 'test_helper'

class BidTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@bid = bids(:one)
  end

  test 'should have product' do
  	@bid.product = nil
  	assert_not @bid.valid?, "product cannot be nil"
  end

  test 'should have user' do
  	@bid.user = nil
  	assert_not @bid.valid?, "user cannot be nil"
  end

end
