class RollsController < ApplicationController
  def new
    result = Die.roll_spec(params[:dice])
    render :json => result
  end
end
