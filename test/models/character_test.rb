require 'test_helper'

class CharacterTest < ActiveSupport::TestCase

  def setup
    @fighter = targets(:fighter)    
    @magic_user = targets(:magic_user)
    @orc = targets(:orc)
  end
  
  test "fighter level 1 attacks monster AC 10" do
    will_roll(20,10)
    @magic_user.ac = 10
    @magic_user.save!
    assert @fighter.attack(@magic_user)
    will_roll(20,9)
    assert !@fighter.attack(@magic_user)
  end

  test "magik user level 1 attacks monster AC 10" do
    will_roll(20,11)
    @fighter.ac = 10
    @fighter.save!
    assert @magic_user.attack(@fighter)
    will_roll(20,10)
    assert !@magic_user.attack(@fighter)
  end

  test "fighter level 1 attacks monster AC -10" do
    will_roll(20,25)
    @magic_user.ac = -10
    @magic_user.save!
    assert @fighter.attack(@magic_user)
    will_roll(20,24)
    assert !@fighter.attack(@magic_user)
  end

  test "find fighter attack matrix" do
    fighter = targets(:fighter)
    assert fighter.attack_matrix
  end
  
  test "find fighter provides self target" do
    fighter = targets(:fighter)
    assert_equal 8, fighter.ac
  end

  test "Fighter Save against Poison" do
    fighter = targets(:fighter)
    assert_equal 1, fighter.level
    assert_equal [:breath, :petrif, :poison, :rod, :spell], fighter.klass_strategy.saving_throws_matrix.keys.sort
    assert_equal [[:breath, 17], [:petrif, 15], [:poison, 14], [:rod, 16], [:spell, 17]], fighter.saving_throws
  end
  
  test "Magic user Save against Poison" do
    magic_user = targets(:magic_user)
    assert_equal 1, magic_user.level
    assert_equal [:breath, :petrif, :poison, :rod, :spell], magic_user.klass_strategy.saving_throws_matrix.keys.sort
    assert_equal [[:breath, 15], [:petrif, 13], [:poison, 14], [:rod, 11], [:spell, 12]], magic_user.saving_throws
  end
  
end
