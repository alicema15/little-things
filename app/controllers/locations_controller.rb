class LocationsController < ApplicationController
    
    def new_location
        @location = Location.create()
        @location_ids = Location.All_Ids
    end
    
    def create_location
        @location = Location.find_by_id(params[:id])
        @location.latitude = params[:location][:latitude].to_f
        @location.longitude = params[:location][:longitude].to_f
        @location.name = params[:location][:name]
        @location.save
        redirect_to show_location_path
    end
    
    def create_location_here
        @location = Location.create()
        @location.longitude = params[:longitude]
        @location.latitude = params[:latitude]
        render :json => {params: params, goto: show_location_path, success: @location.save}
    end
    
    def show
        Location.where(longitude: 0).where(latitude:0).where(name: nil).all. each do |location|
            location.destroy!
        end
        @locations = Location.all
        @plants = Plant.all
        @messages = Message.all
    end

    def destroy
        location = Location.find_by_id(params[:id])
        location.destroy!
        redirect_to show_location_path
    end
    
    def update
        location = Location.find_by_id(params[:edit_location][:id])
        location.name = params[:edit_location][:name]
        location.save
        redirect_to show_location_path
    end
    
    private
        def choice_params
            params.require(:id).permit(:latitude, :longitude, :name, :location_id)
        end
end