class Character < Target
  validates_uniqueness_of :player
  validates_presence_of :player, :class, :str, :int, :wiz, :dex, :cons, :char, :weapons, :race_align
  
  named_scope :by_level, :order => "level"  
  
  selection_options_for :klass_option,
     [:fighter,    'Fighter'],
     [:cleric,     'Cleric'],
     [:thief,      'Thief'],
     [:magic_user, 'MagicUser']  
     
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

