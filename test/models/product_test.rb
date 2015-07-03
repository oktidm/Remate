require 'test_helper'

class ProductTest < ActiveSupport::TestCase

	setup do
		@product = products(:one)
	end

	test "should have a name" do
		@product.name = nil
		@product.price = 5
		assert_not @product.valid?, "name cannot be nil"

	end

	test "should have a price" do
		@product.name = "Roberto"
		@product.price = nil
		assert_not @product.valid?, "price cannot be nil"

	end

	test "should have a price > 0" do
		@product.name = "Roberto"
		@product.price = 0
		assert_not @product.valid?, "price cannot > 0"

	end

	test "should have a description" do
		@product.name = "Roberto"
		@product.price = 0
		@product.description = nil
		assert_not @product.valid?, "description cannot be nil"

	end

end