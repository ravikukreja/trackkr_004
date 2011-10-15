class Friend < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  belongs_to :friend, :class_name => "User"
end


