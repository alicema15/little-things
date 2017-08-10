class MapsController < ApplicationController
   
  def home
    @center = [37.876094, -122.258851]
    center = [37.876094, -122.258851].join(',')
    
    @static_map = Map.static_google_map(center)
    
    @dynamic_map = Map.dynamic_google_map(center)
    
    @customized_map = Map.customized_google_map(center)
    
    @location_id = params[:location_id]
    
  end
  
  def get_nearest_plant
    
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
      @lat = location.latitude
      @long = location.longitude
      @location_id = location.id
      if location.plants.empty?
        @png = 'x.png'
      else
        @png = location.plants.last.plant_pic
      end
    else
      @lat = ""
      @long = ""
      @png = ""
      @location_id = location.id
    end
    respond_to do |format|
      format.js
    end
  end
  
  def location_info
    puts("you are making a request for the location info from maps view!!")
    render :json => {params: params, goto: branches_url(params[:location_id])}
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def choice_params
      params.permit(:my_lat, :my_long, :location_id)
    end
  

end