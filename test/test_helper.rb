ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'mocha/test_unit'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def will_roll(sides, value)
    Die.expects(:roll).with(sides).returns(value)
  end

  def character_attrs(extra = {})
    {
      :name => 'Zaphod',
      :player => 'Roger',
      :klass_option => 'F',
      :race_align => 'elf',
      :level => 5,
      :max_hp => 15,
      :hp => 15,
      :ac => 5,
      :exp_pts => 10000,
      :str => 9,
      :int => 9,
      :wiz => 9,
      :dex => 9,
      :cons => 9,
      :char => 9,
      :treasures   => "",
      :weapons     => "sword (1-8)",
      :notes       => "",
      :group_id => groups(:party).id,     
      :exp_needed  => 90000
    }.merge(extra)
  end

  def monster_attrs(extra ={})
    { :name  => "orc 03",
      :level => 2,
      :max_hp => 12,
      :hp => 12,
      :ac => 8,
      :num_attacks  => 1,
      :damage  => "1-8",
      :treasures => 'A',
      :weapons => 'club',
      :notes => '',
      :group_id => groups(:orc_band).id,
      :exp_value => '40'
    }.merge(extra)
  end
  
end
