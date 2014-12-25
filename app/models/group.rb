class Group < ActiveRecord::Base
  has_many :targets, :dependent => :destroy
  validates_uniqueness_of :name
  validates_presence_of :name

  scope :present,  -> { where("present = 1")  }
  
  def party?
    name == 'Party'
  end
end
