class LocationsController < ApplicationController
    
    def new_location
    end
    
    def create_location
        new = Location.create()
    end
    
end