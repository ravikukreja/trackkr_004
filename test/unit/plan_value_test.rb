require 'test_helper'

class PlanValueTest < ActiveSupport::TestCase
  
  # Test to check the record is created

test "record" do 
  plan_value = PlanValue.new
  assert plan_value.invalid?, "Plan was sucessfully created"
end


#Test to verify only numerical value for Product Plan field

test "numerical product plan" do
  plan_value = PlanValue.new 
  plan_value.product_plan_id = "abc"
  assert plan_value.valid? "Only numerical value is allowed"
end

test "numerical product notes" do
  plan_value = PlanValue.new 
  plan_value.notes = 123
  assert plan_value.valid? "Only numerical value is not allowed"
end

#Test to verify the presence

test "day" do
  plan_value = PlanValue.new(:day => nil)
  assert plan_value.valid?,"Product plan is mandatory"

end


test "distance" do
  plan_value = PlanValue.new(:distance => nil)
  assert plan_value.invalid?,"Day is mandatory"

end

test "speed" do
  plan_value = PlanValue.new(:speed => nil)
  assert plan_value.invalid?,"Distance cannot be blank "
 
end

test "time" do
  plan_value = PlanValue.new(:time => nil)
  assert plan_value.invalid?,"Time is mandatory"
end



  
# Test for negative day  
test "negative day" do
plan_value = PlanValue.new
plan_value.day = -1
assert plan_value.invalid?, "Day cannot be negative"
end  

# Test for positive day  
test "positive day" do
plan_value = PlanValue.new
plan_value.day = 1
assert plan_value.valid?
end 
     
# Test for  day equal to 0  
test " zero day" do
plan_value = PlanValue.new
plan_value.day = 0
assert plan_value.invalid?, "Day cannot be 0"
end  
  
end
