class User < ActiveRecord::Base
  acts_as_authentic
  has_many :user_products
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
end
