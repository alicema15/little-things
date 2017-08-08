class HomepageController < ApplicationController
   
   def home
      @seed_type = Plant.Images.sample
   end
   
  def check_nearby
    my_lat = params[:my_lat].to_f
    my_long = params[:my_long].to_f
    nearest_plant = Location.nearby_planting?(my_lat, my_long)
    distance = nearest_plant[0]
    location = nearest_plant[1]

    if distance < 50
      @location = location
      @plant = location.plants.last
      @location_id = @plant.location.id
      @lat = location.latitude
      @long = location.longitude
      if location.plants.empty?
        @png = 'x.png'
      else
        @png = location.plants.last.plant_pic
      end
    else
      @lat = ""
      @long = ""
      @png = ""
    end
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def choice_params
      params.permit(:my_lat, :my_long)
    end
  


end