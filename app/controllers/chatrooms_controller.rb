class ChatroomsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
  end
end
