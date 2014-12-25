require File.dirname(__FILE__) + '/../test_helper'

class MonsterTest < ActiveSupport::TestCase

  test "monster provides self target" do    
    assert_equal 8, targets(:orc).ac
  end
  
  test "Monster Save against Poison" do
    orc = targets(:orc)
    assert_equal 1, orc.level
    assert_equal [:breath, :petrif, :poison, :rod, :spell], orc.saving_throws_matrix.keys.sort
    assert_equal [[:breath, 17], [:petrif, 15], [:poison, 14], [:rod, 16], [:spell, 17]], orc.saving_throws
  end
  
end
