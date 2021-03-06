class MonstersController < ApplicationController

  def present
    @target = Target.find(params[:id])
    @target.group = Group.create(:present => '1', :name => 'Group: ' + @target.name )
    @target.save
    redirect_to surprise_url
  end
  
  def index
    @monsters = Monster.all.order(:group_id).includes(:group)
  end

  def show
    @attacker = @monster = Monster.find(params[:id])
    load_present_groups
  end

  def new
    @monster = Monster.new
  end

  def edit
    @monster = Monster.find(params[:id])
  end

  def create
    @monster = Monster.new(permit_params)

    if @monster.save
      flash[:notice] = 'Monster was successfully created.'
      redirect_to(@monster) 
    else
      render :action => "new" 
    end
  end

  def clone
    @original = Monster.find(params[:id])
    @monster = @original.clone_monster
    if @monster.save
      flash[:notice] = 'Monster was successfully created.'
      redirect_to(@monster) 
    else
      render :action => "new" 
    end
  end

  def update
    @monster = Monster.find(params[:id])
    if @monster.update_attributes(permit_params)
      flash[:notice] = 'Monster was successfully updated.'
      redirect_to(@monster)
    else
      render :action => "edit" 
    end
  end

  def destroy
    @monster = Monster.find(params[:id])
    @monster.destroy
    redirect_to(monsters_url) 
  end
  
  protected
    def permit_params
      params.require(:monster).permit(Target.permit_params) 
    end  
  
end
