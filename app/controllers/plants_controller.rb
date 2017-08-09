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
        if !Message.where(plant_id: @plant.id).empty? && Message.where(plant_id: @plant.id).last.text != ""
            session[:plant_id] = nil
            @plant.location = Location.find_by_id(params[:location_id])
            if params[:plant_type].nil?
                @plant.plant_pic = Plant.Images.sample
            else
                @plant.plant_pic = params[:plant_type]
            end
            render :json => {params: params, plant_success: true, goto: map_path(:location_id => @plant.location.id), success: @plant.save}
        else
            render :json => {params: params, plant_success: false, success: @plant.save}
        end
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