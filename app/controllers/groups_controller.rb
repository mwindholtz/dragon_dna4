class GroupsController < ApplicationController

  def index
    @groups = Group.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @groups }
    end
  end

  def show
    @group = Group.find(params[:id])
  end

  def present
    @group = Group.find(params[:id])
    @group.update_attribute(:present, '1')
    redirect_to surprise_url
  end
  
  def new
    @group = Group.new
  end

  def edit
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(params[:group])
    if @group.save
      flash[:notice] = 'Group was successfully created.'
      redirect_to(@group)
    else
      render :action => "new"
    end
  end

  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(params[:group])
      flash[:notice] = 'Group was successfully updated.'
      redirect_to(@group)
    else
      render :action => "edit"
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to(groups_url)
  end
end
