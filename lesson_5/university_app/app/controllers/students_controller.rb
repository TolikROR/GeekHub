class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update, :destroy]
  before_action :find_group, only: [:create]

  def index
    @students = Student.all
  end

  def new
    @stuent = Student.new
  end

  def create
    @student = @group.students.create(student_params)

    redirect_to group_students_path(@group)
  end

  def show; end

  def edit; end

  def update
    @student.update(student_params)

    redirect_to group_students_path(@student.group)
  end

  def destroy
    @student.destroy

    redirect_to group_path(@student.group)
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :kurs, :group_id)
  end

  def find_student
    @student = Student.find(params[:id])
  end

  def find_group
    @group = Group.find(params[:group_id])
  end
end
