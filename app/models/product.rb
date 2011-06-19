class Product < ActiveRecord::Base
  validates :name, :image_url, :presence => true
  
  belongs_to :t_category
  has_many :user_products
end
