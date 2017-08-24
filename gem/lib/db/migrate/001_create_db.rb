class TestDataBase < ActiveRecord::Migration[5.0]
  def self.up
    create_table :test_table do |t|
      t.string :name
      t.string :last_name
    end
  end

  def self.down
    drop_table :test_table
  end
end
