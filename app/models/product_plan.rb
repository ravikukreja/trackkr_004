class ProductPlan < ActiveRecord::Base
  has_many :plan_values
  belongs_to :product
  has_many :user_products
end
  