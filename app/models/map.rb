class Map < ActiveRecord::Base
  def self.embed_api_key
    "AIzaSyB2FgsJJ_N2OUPWo58Mz6AqWreu8JwGflE"
  end
  
  def self.javascript_api_key
    "AIzaSyB-0YtU0KT6nqcwAhbfnLwgN08GHdhsDRY"
  end

  def self.static_google_map(center)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17"
  end
  
  def self.dynamic_google_map(center)
    "https://www.google.com/maps/embed/v1/place?key=#{self.embed_api_key}&q=#{center}&zoom=19"
  end
  
  def self.customized_google_map(center)
    "https://maps.googleapis.com/maps/api/js?key=#{self.javascript_api_key}"
  end
   
end