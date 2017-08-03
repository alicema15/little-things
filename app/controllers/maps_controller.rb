class MapsController < ApplicationController
   
  def home
    @center = [37.876094, -122.258851]
    center = [37.876094, -122.258851].join(',')
    
    @static_map = Map.static_google_map(center)
    
    @dynamic_map = Map.dynamic_google_map(center)
    
    @customized_map = Map.customized_google_map(center)
    
    @zoom = 19
    
    
  end
   

end