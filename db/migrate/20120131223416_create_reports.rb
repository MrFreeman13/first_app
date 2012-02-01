class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.integer :user_id
      t.string :kind_of
      t.string :date
      t.string :money
      t.string :comments

      t.timestamps
    end

    add_index :reports, :user_id
    add_index :reports, :kind_of
    add_index :reports, :date
    add_index :reports, :money
    add_index :reports, :comments

  end

  def self.down
    drop_table :reports
  end
end
