class Graph < ActiveRecord::Base
  belongs_to :t_category
  has_many   :user_product_plan_graphs
  validates :t_category_id, :name, :description, :presence => true
end
