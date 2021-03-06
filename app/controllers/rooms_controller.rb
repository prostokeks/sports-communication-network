class RoomsController < ApplicationController

  before_action :set_room, only: [:show, :edit, :destroy, :update]

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @room.update room_params
      redirect_to rooms_path
    else
      render :edit
    end
  end

  def destroy
    @room.destroy
    redirect_to rooms_path
  end

  def show
  end

  private

  def room_params
    params.require(:room).permit(:title, :content, :avatar)
  end

  def set_room
    @room = Room.find(params[:id])
  end
end
