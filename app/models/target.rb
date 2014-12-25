class Target < ActiveRecord::Base
  belongs_to :group
  validates_uniqueness_of :name
  validates_presence_of :name, :hp, :max_hp, :level, :ac, :group_id
  
  def monster?; false; end  

  def target; self; end
  def targetable;  self;  end
    
  def attack(target)
    to_hit(target) <= Die.roll(20)
  end

  def to_hit(target)
    ac = target.ac
    ac = 10 if ac > 10
    ac = -10 if ac < -10
    ac_row = attack_matrix[ac]
    to_hit = ac_row[self.level]
  end

  def saving_throws
    result = Array.new
    tab = saving_throws_matrix
    tab.keys.sort.each{|key| result << [key, tab[key][level]] }
    adjust_saving_throws(result)
  end

  def adjust_saving_throws(hash)
    hash
  end

  def str_mod_to_hit
    0
  end
  
  def str_mod_damage
    0
  end
  
  def dex_mod_ac
    0
  end
 
  def notes
    self[:notes].gsub("\n", "<br/>")
  end

  def weapons
    self[:weapons].gsub("\n", "<br/>")
  end

  def treasures
    self[:treasures].gsub("\n", "<br/>")
  end

end