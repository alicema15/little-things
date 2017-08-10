class BranchesController < ApplicationController
   
  def home
    @location = Location.find_by_id(params[:location_id])
    @plants = @location.plants
  end
   
  def seeds
    render :json => {params: params, goto: branches_path(:location_id => params[:location_id])}
  end
   
   private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
      def choice_params
         params.permit(:my_lat, :my_long, :location_id)
      end
end