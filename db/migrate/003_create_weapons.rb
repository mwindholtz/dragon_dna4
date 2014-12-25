class CreateWeapons < ActiveRecord::Migration
  def self.up
    create_table :weapons do |t|
      t.string :name
      t.integer :weight
      t.integer :speed
      t.string :medium
      t.string :large
    end
  end

  def self.down
    drop_table :weapons
  end
end
