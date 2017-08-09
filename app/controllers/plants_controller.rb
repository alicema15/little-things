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
        @plant = Plant.create()
        @plant.location = Location.find_by_id(params[:location_id])
        @plant.plant_pic = params[:plant_type]
        render :json => {params: params, goto: map_path, success: @plant.save}
    end
    
    def show
        @plants = Plant.all
    end
    
    private
        def choice_params
            params.require(:id).permit(:location_id, :plant_pic)
        end
    
end