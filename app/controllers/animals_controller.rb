class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @animals = policy_scope(Animal)
  end

  def show
    @animal = Animal.find(params[:id])
    @request = Request.new
    authorize @animal
  end

  def new
    @shelter = Shelter.find(params[:shelter_id])
    @animal = Animal.new
    authorize @animal
  end

  def create
    @shelter = Shelter.find(params[:shelter_id])
    @animal = Animal.new(animal_params)
    @animal.shelter = @shelter
    authorize @animal
    if @animal.save
      redirect_to animal_path(@animal), notice: "Animal was successfully created."
    else
      render :new
    end
  end

  def edit
    @animal = Animal.find[params[:id]]
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update(params[animal_params])
      redirect_to animal_path(@animal), notice: "Animal was successfully updated."
    else
      render :edit
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :animal_type, :weight, :size, :age, :medical_information, :race, :description, :dropoff, photos: [])
  end
end
