module TargetableModule

  def self.included(klass)
    klass.class_eval do
      has_one :target, :as => :targetable, :dependent => :destroy
    end
  end

end