class UserProductPlanData < ActiveRecord::Base
  belongs_to :user_product_plan
 
  def self.user_actual_distance(date, user_product_plan_id)
    where("training_date = ? and user_product_plan_id = ?", date, user_product_plan_id).sum(:actual_distance)
  end
  
  def self.user_plan_distance(date, user_product_plan_id)
    where("training_date = ? and user_product_plan_id = ?", date, user_product_plan_id).sum(:plan_distance)
  end

  def self.user_actual_speed(date, user_product_plan_id)
    where("training_date = ? and user_product_plan_id = ?", date, user_product_plan_id).sum(:actual_speed)
  end
  
  def self.user_plan_speed(date, user_product_plan_id)
    where("training_date = ? and user_product_plan_id = ?", date, user_product_plan_id).sum(:plan_speed)
  end


end
