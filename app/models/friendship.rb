class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  
  belongs_to :friend, :class_name => "User"
  belongs_to :inverse_friend, :class_name => "User"
  
  scope :by_product, lambda{ |arg|
    where(:product_id => arg)  
  }
  scope :by_status, lambda{|arg|
    where(:status => arg)
  }
  scope :by_usr_or_frd, lambda{|arg|
    {:conditions=>["user_id=? or friend_id=?",arg,arg]}
  }
  
  
  
  
end


