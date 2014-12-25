class CharactersController < ApplicationController
  def index
    @characters = Character.find(:all, :order => :group_id)
  end

  def show
    @attacker = @character = Character.find(params[:id])
    load_present_groups
  end

  def new
    @stats = Array.new 
    7.times do |indx|
      @stats[indx] = Die.roll_best_of(6,3,6)
    end
    load
  end

  def new_player
    @stats = Array.new 
    7.times do |indx|
      @stats[indx] = Die.roll_best_of(6,3,8)
    end
    load
    render :action => "new" 
  end

  def edit
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new(params[:character])
    if @character.save
      flash[:notice] = 'Character was successfully created.'
      redirect_to character_path(@character)      
    else
      render :action => "new" 
    end
  end

  def update
    @character = Character.find(params[:id])
    if @character.update_attributes(params[:character])
      flash[:notice] = 'Character was successfully updated.'
      redirect_to character_path(@character)
    else
      render :action => "edit"
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to(characters_url)
  end
  
  private
    def load
      @character = Character.new
      @character.str = @stats[0]
      @character.int = @stats[1]
      @character.wiz = @stats[2]
      @character.dex = @stats[3]
      @character.cons = @stats[4]
      @character.char = @stats[5]
    end
    
end
