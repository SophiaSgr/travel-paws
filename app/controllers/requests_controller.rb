class RequestsController < ApplicationController

  def show
    @request = Request.find(params[:id])
    if @request.chatroom
      @chatroom = @request.chatroom
    else
      @chatroom = Chatroom.create(request: @request)
    end
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
    @request.status = "accept"
    @request.save
    redirect_to dashboard_index_path, notice: "Request Accepted"
    authorize @request
  end

  def decline
    @request = Request.find(params[:id])
    @request.status = "decline"
    if @request.save
      redirect_to dashboard_index_path, notice: "Request Decline"
    end
    authorize @request
  end

  private

  def request_params
    params.require(:request).permit(:message)
  end
end
