class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def join
    @room = Room.find(params[:id])
    @user = current_user
    @user.update(room_id: @room.id)
    redirect_to rooms_path
  end

  # def room_availability
  #   @room = Room.find(params[:id])
  #   @room_id = @room.id
  #   @occupants = User.where(room_id: @room_id).count
  #   return @occupants
  # end

end
