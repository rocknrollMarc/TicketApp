class ProjectsController < ApplicationController

	def index

	end

	def new
		@project = Project.new(project_params)
		@project.save
	end

	def create
		@project = Project.new(params[:project])

		if @project.save
			flash[:notice] = "Project has been created."
			redirect_to @project
		else
			flash[:alert] = "Project has not been created."
			render "new"
		end

	end

	def show
		@project = Project.find(params[:id])
	end

	private

	def project_params
		params.require(:project).permit(:name, :description)
	end
end
