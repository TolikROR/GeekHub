class DrinksController < ApplicationController
  before_action :current_drink, only: [:edit, :show, :update, :destroy]
  def index
    @drinks = Drink.all
  end

  def show
  end

  def edit
  end

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.create(drink_params)

    redirect_to drinks_path
  end

  def update
    @drink.update(drink_params)

    redirect_to @drink
  end

  def destroy
    @drink.destroy

    redirect_to drinks_path
  end

  private

  def current_drink
    @drink = Drink.find(params[:id])
  end

  def drink_params
    params.require(:drink).permit(:name, :price)
  end
end
