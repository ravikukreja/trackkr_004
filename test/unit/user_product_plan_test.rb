require 'test_helper'

class UserProductPlanTest < ActiveSupport::TestCase
  
# Start date and End date should be date
  test "start date and end date should be date" do
    user_product_plan = UserProductPlan.new 
    user_product_plan_start_date = "abc"
    user_product_plan_end_date = "ab"
    assert user_product_plan.invalid? "Only numerical value is allowed"
  end
  
  #Start date should be less then End date
  
  test "start date should be less then end date" do
    user_product_plan = UserProductPlan.new(:start_date => '01/01/2012',
                                            :end_date => '01/02/2012')
    assert user_product_plan.end_date > user_product_plan.start_date
  end


  test "product plan id exists" do
    user_product_plan = UserProductPlan.new(:start_date => '01/02/2012',
                                            :end_date => '02/02/2012'
                                            )
    assert user_product_plan.invalid?
   end
  
end
