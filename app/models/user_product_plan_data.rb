class UserProductPlanData < ActiveRecord::Base
  belongs_to :user_product_plan
  
  def self.user_plan_distance(date, user_product_plan_id)
    where("training_date = ? and user_product_plan_id = ?", date, user_product_plan_id).sum(:plan_distance)
  end
 
 def user_actual_distance
   
 end
end
