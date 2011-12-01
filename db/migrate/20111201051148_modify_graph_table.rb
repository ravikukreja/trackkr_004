class ModifyGraphTable < ActiveRecord::Migration
  def self.up
    Graph.delete_all
    remove_column :graphs, :training_date
    remove_column :graphs, :planned_distance
    remove_column :graphs, :actual_distance
    add_column :graphs, :category_id, :integer
    add_column :graphs, :name, :string
    add_column :graphs, :image, :string
    add_column :graphs, :description, :text
  end

  def self.down
    remove_column :graphs, :category_id
    remove_column :graphs, :name
    remove_column :graphs, :image
    remove_column :graphs, :description
  end
end
