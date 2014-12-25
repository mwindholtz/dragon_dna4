require File.dirname(__FILE__) + '/../test_helper'

class WeaponTest < ActiveSupport::TestCase

  def test_weapon_attack_medium    
    will_roll(8,6) 
    sword = weapons(:sword_long) 
    assert_equal 'd8', sword.medium 
    assert_equal 6, sword.damage(:medium)
  end

  def test_weapon_attack_large
    will_roll(6,6) 
    sword = weapons(:sword_long) 
    assert_equal 'd6', sword.large
    assert_equal 6, sword.damage(:large)
  end

end
