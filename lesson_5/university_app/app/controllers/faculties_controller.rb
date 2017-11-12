class FacultiesController < ApplicationController
  before_action :find_faculty, only: [:show, :edit, :update, :destroy]
  before_action :find_university, only: [:create]

  def index
    @faculties = Faculty.all
  end

  def new
    @faculty = Faculty.new
  end

  def create
    @faculty = @university.faculties.create(faculty_params)

    redirect_to university_faculties_path(@university)
  end

  def show; end

  def edit; end

  def update
    @faculty.update(faculty_params)

    redirect_to faculty_path(@faculty)
  end

  def destroy
    @faculty.destroy

    redirect_to universuty_path(@faculty.university)
  end

  private

  def faculty_params
    params.require(:faculty).permit(:name, :university_id)
  end

  def find_faculty
    @faculty = Faculty.find(params[:id])
  end

  def find_university
    @university = University.find(params[:university_id])
  end
end
