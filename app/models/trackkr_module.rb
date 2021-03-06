class TrackkrModule < ActiveRecord::Base
  validates :name, :image_location, :presence => true
  # validates :image_location, :format => {
  # :with             => %r{\.(gif|jpg|png)$}i,
  # :message          => 'URL Format should be GIF, JPG or PNG '
  # }
  validates :name, :uniqueness => true
  
  has_many :t_categories, :dependent => :destroy
  
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
        find(:all)
    end
    
  end
  
end
