class TCategory < ActiveRecord::Base
  validates :name, :image_url, :presence => true
  belongs_to :trackkr_module
  has_many :graphs
  has_many :products, :dependent => :destroy
  
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
