class PlanValue < ActiveRecord::Base
  belongs_to :product_plan
  
  #validates :product_plan, :day, :distance, :speed, :time,  :presence => true
  validates :day, :numericality => {:greater_than_or_equal_to => 1}
  validates :product_plan_id, :numericality => {:greater_than_or_equal_to => 1}
  validates :notes, :format => { :with => /\A[a-zA-Z]+\z/,
    :message => "Only letters allowed" }
  #validates :day, :presence => true
end
