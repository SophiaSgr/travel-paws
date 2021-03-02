class AnimalsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save(params[animal_params])
      redirect_to shelter_animal_path(@animal), notice: "Animal was successfully created."
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
    params.require(:animal).permit(:name, :animal_type, :weight, :size, :age, :medical_information, :race, :description)
  end
end
