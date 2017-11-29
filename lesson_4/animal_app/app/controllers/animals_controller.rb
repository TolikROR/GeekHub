class AnimalsController < ApplicationController
  before_action :find_animal, only: %i[edit show update destroy]

  def index
    @animals = Animal.all
  end

  def edit; end

  def show; end

  def new
    @animal = Animal.new
  end

  def create
    Animal.create(animal_params)

    redirect_to animals_path
  end

  def update
    @animal.update(animal_params)

    redirect_to @animal
  end

  def destroy
    @animal.destroy

    redirect_to animals_path
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :age)
  end

  def find_animal
    @animal = Animal.find(params[:id])
  end
end
