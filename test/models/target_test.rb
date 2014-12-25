require 'test_helper'

class TargetTest < ActiveSupport::TestCase
  def test_load_orc 
    assert orc = targets(:orc)
    orc.save!
  end
  
  
end
