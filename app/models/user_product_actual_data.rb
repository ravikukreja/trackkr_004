class UserProductActualData < ActiveRecord::Base
  belongs_to :user_product
  
 def input_plan_data_into_user_table
   return true
 end
 
end
