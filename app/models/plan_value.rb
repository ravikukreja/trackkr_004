class PlanValue < ActiveRecord::Base
  belongs_to :product_plan
  
  validates :product_plan, :day, :distance, :speed, :time,  :presence => true
  validates :day, :numericality => {:greater_than_or_equal_to => 2}
  
end
