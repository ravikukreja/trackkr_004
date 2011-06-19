class CreateGraphs < ActiveRecord::Migration
  def self.up
    create_table :graphs do |t|
      t.date :training_date
      t.integer :planned_distance
      t.integer :actual_distance

      t.timestamps
    end
  end

  def self.down
    drop_table :graphs
  end
end
