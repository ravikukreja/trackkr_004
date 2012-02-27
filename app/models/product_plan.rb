class ProductPlan < ActiveRecord::Base
  has_many :plan_values
  belongs_to :product
  has_many :user_product_plans
  validates :product_id, :product_plan_name, :product_plan_desc, :presence => true
end
  