require 'test_helper'

class RunArrayTest < ActiveSupport::TestCase

  def test_deprecate
    assert_equal  [], RunArray.expand()
  end

  def test_no_run
    expected = [26]
    assert_equal  expected, RunArray.expand(26, 1)
  end

  def test_one_run
    assert_equal  [25, 25], RunArray.expand(25, 2)
  end

  def test_longer_run
    expected = [26, 25, 25, 23, 23, 23]
    assert_equal  expected,  RunArray.expand(26, 1, 25, 2, 23,3)
  end

end
