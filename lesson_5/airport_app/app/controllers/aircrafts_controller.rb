class AircraftsController < ApplicationController
  before_action :find_aircraft, only: [:show, :edit, :update, :destroy]
  before_action :find_city, only: [:create]

  def index
    @aircrafts = Aircraft.all
  end

  def new
    @aircraft = Aircraft.new
  end

  def create
    @aircraft = @city.aircrafts.create(aircraft_params)

    redirect_to aircraft_path(@aircraft)
  end

  def show
  end

  def edit
  end

  def update
    @aircraft.update(aircraft_params)

    redirect_to aircraft_path(@aircraft)
  end

  def destroy
    @aircraft.destroy

    redirect_to city_path(@aircraft.city)
  end

  private

  def find_aircraft
    @aircraft = Aircraft.find(params[:id])
  end

  def find_city
    @city = City.find(params[:city_id])
  end

  def aircraft_params
    params.require(:aircraft).permit(:name, :city_id)
  end
end
