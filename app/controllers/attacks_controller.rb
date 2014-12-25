class AttacksController < ApplicationController
  def new
    @attacker  = Target.find(params[:attacker_id])
    @defender = Target.find params[:defender_id]
    @hit_mod = params[:hit_mod].to_i || 0
    @to_hit = @attacker.to_hit(@defender)
    @roll_20 = Die.roll(20) 
    @mod_roll = @roll_20 + @hit_mod
  end

  def create
  end

  def surprise
    load_present_groups    
    @parties = Group.present.collect{|e| [e.name, Die.roll(6)] }
  end

  protected
    # def permit_params
    #   params.require(:monster).permit(Target.permit_params) 
    # end  
  
end
