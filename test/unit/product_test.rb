require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "blank_name" do
    product=Product.new(
    :name => nil
    )
    assert product.invalid?,"Product name cannot be blank"
  end
  
  test "blank_category" do
    product=Product.new(
    :t_category_id => nil
    )
    assert product.invalid?,"Category id cannot be blank"
  end
end
