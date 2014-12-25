class Die # < ActiveRecord::Base
  
  def self.roll(sides)
    rand(sides) + 1
  end
  
  def self.roll_times(sides, dice)
    @sum = 0
    dice.times{ @sum += Die.roll(sides) }
    @sum
  end

  def self.roll_best_of(sides, dice, attempts)
    @best = 0
    attempts.times{ got = Die.roll_times(sides, dice); @best = (got > @best ? got : @best) }
    @best
  end
  
  def self.roll_spec(spec)
	  return 0 if spec.blank?
    plus = spec.split('+')[1].to_i
    spec =~ /d/
    dice = ($`).to_i
    dice = (dice == 0) ? 1 : dice
    sides = ($').to_i    
    roll_times(sides, dice) + plus
  end

end
