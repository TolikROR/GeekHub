class FoodsController < ApplicationController
  before_action :current_food, only: %i[edit show update destroy]

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def edit; end

  def show; end

  def create
    Food.create(food_params)

    redirect_to foods_path
  end

  def update
    @food.update(food_params)

    redirect_to @food
  end

  def destroy
    @food.destroy

    redirect_to foods_path
  end

  private

  def current_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:name, :price)
  end
end
