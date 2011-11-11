class UserProductPlan < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  validates_presence_of :product_plan_id
  has_many :user_product_plan_datas
end
