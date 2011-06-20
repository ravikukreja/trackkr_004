class RemoveTrackkrHomes < ActiveRecord::Migration
  def self.up
    drop_table :trackkrhomes
  end

  def self.down
    create_table :trackkrhomes
  end
end
