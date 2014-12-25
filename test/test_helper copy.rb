ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'test_help'

class ActiveSupport::TestCase
  # Transactional fixtures accelerate your tests by wrapping each test method
  # in a transaction that's rolled back on completion.  This ensures that the
  # test database remains unchanged so your fixtures don't have to be reloaded
  # between every test method.  Fewer database queries means faster tests.
  #
  # Read Mike Clark's excellent walkthrough at
  #   http://clarkware.com/cgi/blosxom/2005/10/24#Rails10FastTesting
  #
  # Every Active Record database supports transactions except MyISAM tables
  # in MySQL.  Turn off transactional fixtures in this case; however, if you
  # don't care one way or the other, switching from MyISAM to InnoDB tables
  # is recommended.
  #
  # The only drawback to using transactional fixtures is when you actually 
  # need to test transactions.  Since your test is bracketed by a transaction,
  # any transactions started in your code will be automatically rolled back.
  self.use_transactional_fixtures = true

  # Instantiated fixtures are slow, but give you @david where otherwise you
  # would need people(:david).  If you don't want to migrate your existing
  # test cases which use the @david style and don't mind the speed hit (each
  # instantiated fixtures translates to a database query per test method),
  # then set this back to true.
  self.use_instantiated_fixtures  = false

  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
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
      :group => groups(:party),      
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
      :group => groups(:orc_band),
      :exp_value => '40'
    }.merge(extra)
  end
  
end
