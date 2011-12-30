class User < ActiveRecord::Base
  acts_as_authentic
  has_many :user_product_plans
  has_many :friendships
  has_many :friends, :through => :friendships
  
  has_many :inverse_friendships,:class_name => "Friendship", :foreign_key=> "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source=> :user
  
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

end
