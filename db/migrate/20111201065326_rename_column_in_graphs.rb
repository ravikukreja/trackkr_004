class RenameColumnInGraphs < ActiveRecord::Migration
  def self.up
    rename_column :graphs, :category_id, :t_category_id
  end

  def self.down
    rename_column :graphs, :t_category_id, :category_id
  end
end
