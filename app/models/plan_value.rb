class PlanValue < ActiveRecord::Base
  belongs_to :product_plan
  
  #validates :product_plan, :day, :distance, :speed, :time,  :presence => true
  validates :day, :numericality => {:greater_than_or_equal_to => 1}
  validates :product_plan_id, :numericality => {:greater_than_or_equal_to => 1}
  validates :notes, :format => { :with => /\A[a-zA-Z]+\z/,
    :message => "Only letters allowed" }
  #validates :day, :presence => true
  
   def self.distance(day)
    where("day = ?", day).sum(:distance) * 0.5
  end
  
  def self.speed(day)
    where("day = ?", day).sum(:speed) * 0.5
  end
  
  def self.time(day)
    where("day = ?", day).sum(:time) * 0.5
  end
  
  
  
end
