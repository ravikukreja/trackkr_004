class UserProductPlanData < ActiveRecord::Base
  
  
  belongs_to :user_product_plan
  
   def input_plan_data_into_user_table
   return true
 end
 
 
   
   
   
   
   
    def self.user_actual_distance(date, user_product_plan_id)
    where("training_date = ? and user_product_plan_id = ?", date, user_product_plan_id).sum(:actual_distance)
  end
  
    def self.user_plan_distance(date, user_product_plan_id)
    where("training_date = ? and user_product_plan_id = ?", date, user_product_plan_id).sum(:plan_distance)
  end
   
   
   
end
