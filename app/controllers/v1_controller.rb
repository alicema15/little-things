class V1Controller < ApplicationController
  # MAKE SURE TO DEFINE YOUR VIEW IN THREE PLACES
  # * HERE as a new ruby function
  # * IN /VIEWS/V1/VIEWNAME.HTML.HAML
  # * IN /config/routes 
  def home
    @images = {}
    @images["/v1_screens/1_0.jpg"] = ["/v1_screens/2_0.jpg",
      "/v1_screens/2_0.jpg"]
    @images["/v1_screens/2_0.jpg"] = ["/v1_screens/3_0.jpg",
      "/v1_screens/3_0.jpg"]
    @images["/v1_screens/3_0.jpg"] = ["/v1_screens/4_0.jpg",
      "/v1_screens/4_0.jpg"]
    @images["/v1_screens/4_0.jpg"] = ["/v1_screens/5_0.jpg",
      "/v1_screens/5_0.jpg"]
    @images["/v1_screens/5_0.jpg"] = ["/v1_screens/6_0.jpg",
      "/v1_screens/6_0.jpg"]
    @images["/v1_screens/6_0.jpg"] = ["/v1_screens/7_0.jpg",
      "/v1_screens/7_0.jpg"]
    @images["/v1_screens/7_0.jpg"] = ["/v1_screens/7_1.jpg",
      "/v1_screens/8_0.jpg"]
    @images["/v1_screens/7_1.jpg"] = ["/v1_screens/7_0.jpg", "/v1_screens/7_2.jpg"]
    @images["/v1_screens/7_2.jpg"] = ["/v1_screens/7_1.jpg", "/v1_screens/7_3.jpg"]
    @images[ "/v1_screens/7_3.jpg"] = ["/v1_screens/7_2.jpg",
      "/v1_screens/7_3.jpg"]
    @images["/v1_screens/8_0.jpg"] = ["/v1_screens/7_0.jpg",
      "/v1_screens/9_0.jpg"]
    @images["/v1_screens/9_0.jpg"] = ["/v1_screens/8_0.jpg", "/v1_screens/10_0.jpg"]
    @images["/v1_screens/10_0.jpg"] = ["/v1_screens/9_0.jpg", "/v1_screens/11_0.jpg"]
    @images["/v1_screens/11_0.jpg"] = ["/v1_screens/10_0.jpg","/v1_screens/12_0.jpg"]
    @images["/v1_screens/12_0.jpg"] = ["/v1_screens/11_0.jpg", "/v1_screens/12_0.jpg"]

    puts @images
    
    if !params[:image].nil?
      @image = params[:image]
      @image_next = @images[@image][1]
      @image_before = @images[@image][0]
    else
      @image = '/v1_screens/1_0.jpg'
      redirect_to v1_home_path(:image => @image)
    end
    #redirect_to v1_home_path(:image => @image_src)
  end
end
