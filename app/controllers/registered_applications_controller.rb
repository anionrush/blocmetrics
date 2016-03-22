class RegisteredApplicationsController < ApplicationController
	
	def index
		@registered_applications = RegisteredApplication.all
	end

	def show
		@registered_application = RegisteredApplication.find(params[:id])
	end

	def new 
		@registered_application = RegisteredApplication.new
	end

	def create
		@registered_application = RegisteredApplication.new
		@registered_application.user = current_user
    @registered_application.name = params[:registered_application][:name]
    @registered_application.URL = params[:registered_application][:URL]

     if @registered_application.save
      redirect_to registered_applications_path, notice: "Application was saved successfully."
     else
       flash.now[:alert] = "Error registering Application. Please try again."
       render :new
     end
	end

	def destroy
		@registered_application = RegisteredApplication.find(params[:id])

		if @registered_application.destroy
       flash[:notice] = "\"#{@registered_application.name}\" was deleted successfully."
       redirect_to action: :index
     else
       flash.now[:alert] = "There was an error deleting the application."
       render :show
     end
	end
end
