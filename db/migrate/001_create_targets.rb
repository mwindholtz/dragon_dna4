class CreateTargets < ActiveRecord::Migration
  def self.up
    create_table :targets do |t|
      t.belongs_to :group
      t.string :type
      t.string :name
      t.string :race_align
      t.integer :level,  :default => 1
      t.integer :max_hp, :default => 2
      t.integer :hp,     :default => 2
      t.integer :ac,     :default => 10
      t.text :treasures
      t.text :weapons
      t.text :notes
      
      #characters
      t.string :player
      t.string :klass_option
      t.integer :exp_needed
      t.integer :exp_pts
      t.integer :str
      t.integer :int
      t.integer :wiz
      t.integer :dex
      t.integer :cons
      t.integer :char
      # monsters
      t.integer :num_attacks, :default => 1
      t.string :damage
      t.string :size, :limit=> 1, :default => 'M'
      t.integer :exp_value, :default => 0
      
      t.timestamps
    end
  end

  def self.down
    drop_table :targets
  end
end

