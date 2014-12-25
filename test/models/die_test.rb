require File.dirname(__FILE__) + '/../test_helper'

class DieTest < ActiveSupport::TestCase

  test "roll 4 sided die" do
    assert_roll 4
  end
  
  test " lots of times " do
    1000.times { assert_roll(4)}
    1000.times { assert_roll(20)} 
    1000.times { assert_roll(100)} 
  end

  def assert_roll(num)
    result = Die.roll(num)
    assert result >= 1,   "was #{result}"
    assert result <= num, "was #{result}"
  end

  def test_roll_spec_blank
    assert_equal 0, Die.roll_spec("  ") 
  end

  def test_roll_spec_6    
    will_roll(6,6)    
    assert_equal 6, Die.roll_spec("d6") 
  end

  def test_roll_spec_8_with_white_space
    will_roll(8,1)    
    assert_equal 1, Die.roll_spec("  d 8  ") 
  end

  def test_roll_spec_20
    will_roll(20,20)    
    assert_equal 20, Die.roll_spec("d20") 
  end

  def test_roll_spec_3_d_6
    Die.expects(:roll).with(6).times(3).returns(6)
    assert_equal 18, Die.roll_spec("3d6") 
  end

  def test_roll_spec_d_6_plus_1
    Die.expects(:roll).with(6).times(1).returns(6)
    assert_equal 7, Die.roll_spec("d6+1") 
  end

  def test_roll_spec_2_d_10_plus_2
    Die.expects(:roll).with(10).times(2).returns(10)
    assert_equal 22, Die.roll_spec("2d10 + 2 ") 
  end

end
