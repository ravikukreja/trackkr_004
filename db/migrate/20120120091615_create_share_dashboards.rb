class CreateShareDashboards < ActiveRecord::Migration
  def self.up
    create_table :share_dashboards do |t|
      t.string :name
      t.string :email
      t.string :shared_plan

      t.timestamps
    end
  end

  def self.down
    drop_table :share_dashboards
  end
end
