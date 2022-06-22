class ChatsController < ApplicationController

  before_action :get_room
  before_action :set_chat, only: [:show, :edit, :destroy, :update]


  def index
    @chats = @room.chats
  end

  def new
    @chat = @room.chats.build
  end

  def create
    @chat = @room.chats.build(chat_params)
    @chat.user_id = current_user.id
    if @chat.save
      redirect_to room_path(@room)
    else
      render room_path(@room)
    end
  end

  def edit
  end

  def update
    if @chat.update chat_params
      redirect_to room_path(@room)
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @chat.destroy
    redirect_to room_path(@room)
  end

  private

  def get_room
    @room = Room.find(params[:room_id])
  end

  def set_chat
    @chat = @room.chats.find(params[:id])
  end

  def chat_params
    params.require(:chat).permit(:message)
  end
end
