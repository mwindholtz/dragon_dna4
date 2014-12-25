class Character < Target
  validates_uniqueness_of :player
  validates_presence_of :player, :class, :str, :int, :wiz, :dex, :cons, :char, :weapons, :race_align
  
  scope :by_level, -> { order("level")  }
  
  selection_options_for :klass_option,
     [:fighter,    'F', 'Fighter'],
     [:cleric,     'C', 'Cleric'],
     [:thief,      'T', 'Thief'],
     [:magic_user, 'M', 'MagicUser']  
     
  def attack_matrix
    klass_strategy.attack_matrix
  end
  
  def saving_throws_matrix
    klass_strategy.saving_throws_matrix
  end

  def size 
    :medium
  end

  def klass_strategy
    eval(klass_option_label).new
  end

end

