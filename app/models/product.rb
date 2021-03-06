class Product < ActiveRecord::Base
  validates :name, :image_location, :presence => true
  belongs_to :t_category
  has_many :product_plans
  
  def self.search(search)
   if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
        find(:all)
    end
  end
end
