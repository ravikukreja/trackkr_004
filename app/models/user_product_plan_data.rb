class UserProductPlanData < ActiveRecord::Base
  belongs_to :user_product_plan
  
   def input_plan_data_into_user_table
   return true
 end
 
end
