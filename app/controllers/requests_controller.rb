class RequestsController < ApplicationController

 def show
    @request = Request.find(params[:id])
    @chatroom = @request.chatroom
    @user1 = current_user
    @user2 = @request.animal.shelter.user
    @message = Message.new
    authorize @request
  end
  def create
    @animal = Animal.find(params[:animal_id])
    @request = Request.new(request_params)
    @request.user = current_user
    @request.animal = @animal
    if @request.save
      redirect_to dashboard_index_path
    else
      render "animals/show"
    end
    authorize @request
  end

  def accept
    @request = Request.find(params[:id])
    @request.accepted!
    redirect_to dashboard_index_path, notice: "Request Accepted"
    authorize @request
  end

  def decline
    @request = Request.find(params[:id])
    @request.declined!
    redirect_to dashboard_index_path, notice: "Request Decline"
    authorize @request
  end

  private

  def request_params
    params.require(:request).permit(:message, :passport)
  end
end
