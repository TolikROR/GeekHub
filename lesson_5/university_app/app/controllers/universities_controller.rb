class UniversitiesController < ApplicationController
  before_action :find_university, only: %i[show edit update destroy]
  before_action :find_city, only: [:create]

  def index
    @universities = University.all
  end

  def new
    @university = University.new
  end

  def create
    @university = @city.universities.create(university_params)

    redirect_to city_universities_path(@city)
  end

  def show; end

  def edit; end

  def update
    @university.update(university_params)

    redirect_to university_path(@university)
  end

  def destroy
    @university.destroy

    redirect_to city_path(@university.city)
  end

  private

  def university_params
    params.require(:university).permit(:name, :city_id)
  end

  def find_city
    @city = City.find(params[:city_id])
  end

  def find_university
    @university = University.find(params[:id])
  end
end
