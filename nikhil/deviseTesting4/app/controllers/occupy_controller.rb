class OccupyController < ApplicationController
  def index
   
    @rooms = Room.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rooms }
    end
  end

  def apply

    @room = Room.find(params[:id])
    if @room.user_id == nil
      @room.user_id = current_user.id
    else
      @room.user_id=nil
    end

    if @room.save
      respond_to do |format|
        format.html { redirect_to '/' }
        format.js   

      end
    end
  end
end
