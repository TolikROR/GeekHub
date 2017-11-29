class StudentsController < ApplicationController
  before_action :current_student, only: %i[edit show update destroy]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def edit; end

  def show; end

  def create
    Student.create(student_params)

    redirect_to students_path
  end

  def update
    @student.update(student_params)

    redirect_to @student
  end

  def destroy
    @student.destroy
    redirect_to students_path
  end

  private

  def current_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :course)
  end
end
