class SheltersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  
  def index
    @shelters = policy_scope(Shelter)
  end

  def show
    @shelter = Shelter.find(params[:id])
    authorize @shelter
  end

  def new
    @shelter = Shelter.new
    authorize @shelter
  end

  def create
    @shelter = Shelter.new(shelter_params)
    @shelter.user = current_user
    authorize @shelter
    if @shelter.save
      redirect_to shelter_path(@shelter), notice: "Shelter was successfully created."
    else
      render :new
    end
  end

  def edit
    @shelter = Shelter.find[params[:id]]
  end

  def update
    @shelter = Shelter.find(params[:id])
    if @shelter.update(params[shelter_params])
      redirect_to shelter_path(@shelter), notice: "Shelter successfully updated."
    else
      render :edit
    end
  end

  private

  def shelter_params
    params.require(:shelter).permit(:name, :address, :description, :photo)
  end
end
