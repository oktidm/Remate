require 'test_helper'

class PagesControllerTest < ActionController::TestCase

	include Devise::TestHelpers
  test "should get landing_page" do
    get :landing_page
    assert_response :success
  end

end
