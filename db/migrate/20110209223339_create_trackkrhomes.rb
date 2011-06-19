class CreateTrackkrhomes < ActiveRecord::Migration
  def self.up
    create_table :trackkrhomes do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :trackkrhomes
  end
end
