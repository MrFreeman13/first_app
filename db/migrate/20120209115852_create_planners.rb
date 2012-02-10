class CreatePlanners < ActiveRecord::Migration
  def self.up
    create_table :planners do |t|
      t.integer :user_id
      t.string :kind_of
      t.string :time
      t.integer :money
      t.string :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :planners
  end
end
