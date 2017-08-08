class LocationsController < ApplicationController
    
    def new_location
        @location = Location.create()
    end
    
    def create_location
        @location = Location.find_by_id(params[:id])
        @location.latitude = params[:location][:latitude].to_f
        @location.longitude = params[:location][:longitude].to_f
        @location.name = params[:location][:name]
        @location.save
        redirect_to show_location_path
    end
    
    def show
        @locations = Location.all
        @plants = Plant.all
    end
    
    private
        def choice_params
            params.require(:id).permit(:latitude, :longitude, :name)
        end
end