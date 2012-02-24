class ChangeImageUrlName < ActiveRecord::Migration
  def self.up
    rename_column :products, :image_url, :image_location
  end

  def self.down
    rename_column :products, :image_location, :image_url
  end
end
