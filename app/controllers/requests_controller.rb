class RequestsController < ApplicationController

  def new
    @request = policy_scope(Request)
  end

  def create
    authorize @request
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

  def requests_params
    require.params(:request).permit(:message)
  end
end
