require 'test_helper'

class UserProductPlanDataTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "blank_plan_distance" do
    user_product_plan_data = UserProductPlanData.new(:plan_distance => nil)
    assert user_product_plan_data.invalid?, "Plan distance cannot be blank"
  end
  
  test "blank_plan_speed" do
     user_product_plan_data = UserProductPlanData.new(:plan_speed => nil)
    assert user_product_plan_data.invalid?, "Plan speed cannot be blank"
  end
  
  test "blank_plan_time" do
     user_product_plan_data = UserProductPlanData.new(:plan_time => nil)
    assert user_product_plan_data.invalid?,"Plan time cannot be blank"
  end
  
  test "Numerical_plan_distance" do
     user_product_plan_data = UserProductPlanData.new(:plan_distance => 'abc')
    assert user_product_plan_data.invalid?, "Plan distance cannot be alphabatic"
  end
  
  test "Numerical_plan_speed" do
     user_product_plan_data = UserProductPlanData.new(:plan_distance => 'abc')
    assert user_product_plan_data.invalid?, "Plan speed cannot be alphabatic"
  end
  
  test "Numerical_plan_time" do
     user_product_plan_data = UserProductPlanData.new(:plan_distance => 'abc')
    assert user_product_plan_data.invalid?, "Plan time cannot be alphabatic"
  end
  
  
end
