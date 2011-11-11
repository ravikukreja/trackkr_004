class User < ActiveRecord::Base
  acts_as_authentic
  has_many :user_product_plans
  has_many :friends
  
  scope :by_email, lambda{ |arg|
    where(:email => arg)  
  }
  scope :by_username, lambda{|arg|
    where(:username => arg)
  }
  
  def self.search(params,sort)
    method_mappings = { :email => :by_email, :username => :by_username}        
    results = User
    params.each do |key,value|
      results = results.send(method_mappings[key.to_sym],value) if method_mappings[key.to_sym] and not value.blank?
    end
    results.order(sort)
  end
  
  def user_product_plan_datas(product_plan_id,date)
    user_product_plan = UserProductPlan.find_by_user_id_and_product_plan_id(self.id,product_plan_id)
    UserProductPlanData.find_by_user_product_plan_id_and_training_date(user_product_plan.id,date)
  end
end
