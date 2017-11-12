class TeachersController < ApplicationController
  before_action :find_teacher, only: [:show. :edit, :update, :destroy]
  before_action :find_university, only: [:create]

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = @university.teachers.create(teacher_params)

    redirect_to universities_path
  end

  def show; end

  def edit; end

  def update
    @teacher.update(teacher_params)

    redirect_to teacher_path(@teacher)
  end

  def destroy
    @teacher.destroy

    redirect_to university_path(@teacher.university)
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :age, :university_id)
  end

  def find_teacher
    @teacher = Teacher.find(params[:id])
  end

  def find_university
    @university = University.find(params[:university_id])
  end
end
