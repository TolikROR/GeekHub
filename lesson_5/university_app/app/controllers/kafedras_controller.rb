class KafedrasController < ApplicationController
  before_action :find_kafedra, only: [:show, :edit, :update, :destroy]
  before_action :find_faculty, only: [:create]

  def index
    @kafedras = Kafedra.all
  end

  def new
    @kafedra = Kafedra.new
  end

  def create
    @kafedra = @faculty.kafedras.create(kafedra_params)

    redirect_to faculty_kafedras_path(@faculty)
  end

  def show; end

  def edit; end

  def update
    @kafedra.update(kafedra_params)

    redirect_to kafedra_path(@kafedra)
  end

  def destroy
    @kafedra.destroy

    redirect_to faculty_path(@kafedra.faculty)
  end

  private

  def kafedra_params
    params.require(:kafedra).permit(:name, :faculty_id)
  end

  def find_kafedra
    @kafedra = Kafedra.find(params[:id])
  end

  def find_faculty
    @faculty = Faculty.find(params[:faculty_id])
  end
end
