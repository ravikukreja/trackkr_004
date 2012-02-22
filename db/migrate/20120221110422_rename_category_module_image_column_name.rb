class RenameCategoryModuleImageColumnName < ActiveRecord::Migration
  def self.up
    rename_column :t_categories, :image_url, :image_location
    rename_column :trackkr_modules, :image_url, :image_location
  end

  def self.down
    rename_column :t_categories, :image_location, :image_url
    rename_column :trackkr_modules, :image_location, :image_url
  end
end
