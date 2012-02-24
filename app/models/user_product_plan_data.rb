class UserProductPlanData < ActiveRecord::Base
  belongs_to :user_product_plan
 scope :by_days, lambda{ |no_days|
     where("training_date >= ? and training_date <= ?", no_days.days.ago, Date.today)  
       }
         
	   scope :unfilled_actual_data,lambda {
	       where("actual_distance is NULL and actual_speed is NULL and actual_time is NULL" )
	         }
 
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
  
  
  def self.user_actual_time(date, user_product_plan_id)
    where("training_date = ? and user_product_plan_id = ?", date, user_product_plan_id).sum(:actual_time)
  end
  
  def self.user_plan_time(date, user_product_plan_id)
    where("training_date = ? and user_product_plan_id = ?", date, user_product_plan_id).sum(:plan_time)
  end
  
  def self.show_data( user_product_plan_id)
    where("user_product_plan_id = ?",user_product_plan_id).sum(:plan_speed)
  end
  
  def self.friend_actual_distance(date, user_product_plan_id)
    where("training_date = ? and user_product_plan_id = ?", date, user_product_plan_id).sum(:actual_distance)
  end
  
  def self.friend_plan_distance(date, user_product_plan_id)
    where("training_date = ? and user_product_plan_id = ?", date, user_product_plan_id).sum(:plan_distance)
  end
  
end
