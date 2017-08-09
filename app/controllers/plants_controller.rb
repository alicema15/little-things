class PlantsController < ApplicationController
    
    def new
        @locations = Location.All_Ids
        @plant_pics = Plant.Images
    end
    
    def create
        @plant = Plant.create()
        @plant.location = Location.find_by_id(params[:edit_plant][:location_id])
        @plant.plant_pic = params[:edit_plant][:plant_pic]
        @plant.save
        redirect_to show_location_path
    end
    
    def create_by_planting
        plant = Plant.find_by_id(session[:plant_id])
        if plant.nil?
            @plant = Plant.create()
        else
            @plant = plant
        end
        session[:plant_id] = nil
        @plant.location = Location.find_by_id(params[:location_id])
        @plant.plant_pic = params[:plant_type]
        render :json => {params: params, goto: map_path(:location_id => @plant.location.id), success: @plant.save}
    end
    
    def show
        @plants = Plant.all
    end
    
    def destroy
        plant = Plant.find_by_id(params[:id])
        if session[:plant_id] == plant.id
            session[:plant_id] = nil
        end
        plant.destroy!
        redirect_to show_location_path
    end
    
    private
        def choice_params
            params.require(:id).permit(:location_id, :plant_pic)
        end
    
end