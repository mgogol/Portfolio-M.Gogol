class ProjectsController < ApplicationController
  def index
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new project_params
    if @project.save
      redirect_to @project, notice: "Hey, Mykola! Your project is successfully saved."
    else
      render 'new', notice: "Oh, no! I was unable to save your project."
    end
  end

  private
  def project_params
    params.require(:project).permit(:title, :description)
  end
end
