class RequestsController < ApplicationController

  def new
    @request = policy_scope(Request)
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @request = Request.new(request_params)
    authorize @request
    @request.user = current_user
    @request.animal = @animal
    if @request.save
      redirect_to dashboard_index_path
    else
      render "animals/show"
    end
  end

  def accept
    @request = Request.find(params[:id])
    @request.accept!
    redirect_to dashboard_path
    authorize @request
  end

  def decline
    @request = Request.find(params[:id])
    @request.decline!
    authorize @request
  end

  private

  def request_params
    params.require(:request).permit(:message, :passport)
  end
end
