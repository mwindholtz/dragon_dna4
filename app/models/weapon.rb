class Weapon < ActiveRecord::Base
  validates_presence_of :name, :speed, :medium, :large

  def damage(size)
    Die.roll_spec(self.send(size))
  end
      
end
