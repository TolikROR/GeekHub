class CarsController < ApplicationController
  before_action :current_car, only: %i[show update edit destroy]

  def index
    @cars = Car.all
  end

  def show; end

  def new
    @car = Car.new
  end

  def edit; end

  def create
    Car.create(car_params)

    redirect_to cars_path
  end

  def update
    @car.update(car_params)

    redirect_to @car
  end

  def destroy
    @car.destroy

    redirect_to cars_path
  end

  private

  def current_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:brand, :color, :price)
  end
end
