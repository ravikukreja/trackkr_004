require 'test_helper'

class ProductPlanTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "blank_product" do
    product_plan= ProductPlan.new(
    :product_id=> nil)
    assert product_plan.invalid?, "Product ID cannot be blank"
  end
  
  test "blank_product_plan_name" do
    product_plan= ProductPlan.new(
    :product_plan_name=> nil)
    assert product_plan.invalid?, "Product plan name cannot be blank"
  end
  
  test "blank_product_plan_desc" do
    product_plan= ProductPlan.new(
    :product_plan_desc=> nil)
    assert product_plan.invalid?, "Product plan description cannot be blank"
  end
end
