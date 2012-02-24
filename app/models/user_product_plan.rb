class UserProductPlan < ActiveRecord::Base
  belongs_to :product_plan
  belongs_to :user
  validates_presence_of :product_plan_id
  has_many :user_product_plan_datas, :dependent => :destroy
  has_many :user_product_plan_graphs, :dependent => :destroy
  validates_uniqueness_of :product_plan_id, :scope => :user_id, :message => 'You already have this Product'
end
