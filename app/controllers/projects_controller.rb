class ProjectsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def show
    @project = Project.find_by(id: params[:id])
    @project_requests = @project.project_requests.order(created_at: :desc)
  end

  def new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    project = Project.find(params[:id])
    project.update!(project_params)
    redirect_to '/projects?alert=proyecto_actualizado'
  end

  def create
    Project.create!(project_params)
    redirect_to '/projects?alert=proyecto_creado'
  end

  def destroy
    Project.find(params[:id]).destroy
    redirect_to '/projects?alert=proyecto_eliminado'
  end

  def index
    @projects = Project.all.order(created_at: :desc)
  end

  def project_params
    params.require(:project).permit(:name, :description, :category, :status, :funding, :start_date, :end_date)
  end
end
