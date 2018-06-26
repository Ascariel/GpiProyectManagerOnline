class ProjectRequestsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def show
    @project_request = ProjectRequest.find_by(id: params[:id])
  end

  def new
  end

  def edit
    @project_request = ProjectRequest.find(params[:id])
  end

  def update
    project_request = ProjectRequest.find(params[:id])
    project_request.update!(project_params)
    redirect_to '/project_requests?alert=solicitud_actualizada'
  end

  def create
    ProjectRequest.create!(project_params)
    redirect_to '/project_requests?alert=solicitud_creada'
  end

  def destroy
    ProjectRequest.find(params[:id]).destroy
    redirect_to '/project_requests?alert=solicitud_eliminada'
  end

  def index
    @project_requests = ProjectRequest.all.order(created_at: :desc)
  end

  def project_params
    params.require(:project_request).permit(:name, :description, :category, :status, :creation_date, :user_id, :project_id, :description)
  end

end
