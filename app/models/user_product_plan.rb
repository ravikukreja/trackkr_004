class UserProductPlan < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  validates_presence_of :product_plan_id
  has_many :user_product_plan_datas
  
    
 def input_plan_data_into_user_table
   return true
 end
end
