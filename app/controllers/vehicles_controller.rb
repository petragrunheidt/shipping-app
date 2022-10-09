class VehiclesController < ApplicationController
  before_action :authenticate_user!, only: %i[index]
  before_action :require_admin, only: %i[new]

  def index 
  end

  def new 
    @vehicle = Vehicle.new
  end

  def create 
    @vehicle = Vehicle.new new_vehicle_params
    if @vehicle.save 
      flash.notice = t 'messages.vehicle_created_with_success'
      return redirect_to vehicles_url
    end
    flash.now.notice = t 'messages.vehicle_not_created'
    render :new, status: :unprocessable_entity
  end

  private 

    def new_vehicle_params 
      params.require(:vehicle).permit(
        :license_plate, :brand_name, :vehicle_type,
        :fabrication_year, :maximum_capacity,
        :transport_modality_id
      )
    end
end