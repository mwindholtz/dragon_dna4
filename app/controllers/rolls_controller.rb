class RollsController < ApplicationController

  def new
    respond_to do |format|
      format.js do
         result = Die.roll_spec(params[:dice])
         render :text => "<span id='roll-result'>#{result}</span>"
      end # format
    end # respond_to
  end

end
