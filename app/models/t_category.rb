class TCategory < ActiveRecord::Base
  validates :name, :image_url, :presence => true
  belongs_to :trackkr_module
  has_many :products, :dependent => :destroy
end
