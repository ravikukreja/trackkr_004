class User < ActiveRecord::Base
  acts_as_authentic
  has_many :user_products
  has_many :friends
end
