class User < ActiveRecord::Base
  acts_as_authentic
  has_many :user_product_plans
  has_many :friendships
  has_many :friends, :through => :friendships
  before_create { generate_token(:auth_token) }
  #validates :username, :email, :password,  :presence => true

  
  has_many :inverse_friendships,:class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  
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
  
  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
  
  
end
