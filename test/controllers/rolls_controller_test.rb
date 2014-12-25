require 'test_helper'

class RollsControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  test "the truth" do
	  Die.expects(:roll_spec).returns(18)
    xhr :get, :new, :dice => 'd6'
    assert_equal "<span id='roll-result'>18</span>", @response.body 
  end
end
