class GroupsController < ApplicationController
  before_action :find_group, only: [:show, :edit, :update, :destroy]
  before_action :find_kafedra, only: [:create]

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = @kafedra.groups.create(group_params)

    redirect_to kafedra_groups_path(@kafedra)
  end

  def show; end

  def edit; end

  def update
    @group.update(group_params)

    redirect_to group_path(@group)
  end

  def destroy
    @gtoup.destroy

    redirect_to kafera_path(@group.kafedra)
  end

  private

  def group_params
    params.require(:group).permit(:name, :kafedra_id)
  end

  def find_group
    @group = Group.find(params[:id])
  end

  def find_kafedra
    @kafedra = Kafedra.find(params[:kafedra_id])
  end
end
