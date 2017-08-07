class LocationsController < ApplicationController
    
    def new_location
        @location = Location.new()
        @location.save
    end
    
    def create_location
    end
    
    private
        def choice_params
        
            params.require(:id).permit(:latitude, :longitude, :title)
        end
end