class Graph < ActiveRecord::Base
  def self.total_on(date)
    where("date(training_date) = ?", date).sum(:actual_distance)
  end
end
