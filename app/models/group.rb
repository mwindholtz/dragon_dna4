class Group < ActiveRecord::Base
  has_many :targets, :dependent => :destroy
  validates_uniqueness_of :name
  validates_presence_of :name

  named_scope :present, :conditions => "present = 1"  
  
  def party?
    name == 'Party'
  end
end
