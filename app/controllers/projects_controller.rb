class ProjectsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
  end

  def new
    @contact = Contact.new
    @project = Project.new
  end

  def create
    @project = Project.new project_params
    if @project.save
      redirect_to @project, notice: 'Hey, Mykola! Your project is successfully saved.'
    else
      render 'new', notice: 'Oh, no! I was unable to save your project.'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @project.update project_params
      redirect_to @project, notice: 'Your project successfully updated!'
    else
      render 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to root_path
  end

  # def self.find(id)
  #   friendly.find(id)
  # rescue ActiveRecord::RecordNotFound
  # end

  private
  def project_params
    params.require(:project).permit(:title, :description, :image, :slug)
  end

  def find_post
    @project = Project.friendly.find(params[:id])
    unless @project
      redirect_to root_path
    end
  end

end
