class PlanValue < ActiveRecord::Base
  belongs_to :product_plan
  
  #validates :product_plan, :day, :distance, :speed, :time,  :presence => true
  validates :day, :numericality => {:greater_than_or_equal_to => 1}
  validates :product_plan_id, :numericality => {:greater_than_or_equal_to => 1}
  validates :notes, :format => { :with => /\A[a-zA-Z]+\z/,
    :message => "Only letters allowed" }
  #validates :day, :presence => true
  
   def self.distance(day, product_plan_id)
    where("day = ? and product_plan_id =?", day, product_plan_id).sum(:distance)
  end
  
  def self.speed(day, product_plan_id)
    where("day = ? and product_plan_id =?", day, product_plan_id).sum(:speed)
  end
  
  def self.time(day, product_plan_id)
    where("day = ? and product_plan_id =?", day, product_plan_id).sum(:time)
  end
  
  
  
end
