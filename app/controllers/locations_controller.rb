class LocationsController < ApplicationController
  before_action :get_location, only: [:show, :edit, :update, :destroy]

  def index
    @locations = Location.all
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    location = Location.create(location_params)
    redirect_to location
  end

  def edit
  end

  def update
    @location.update(location_params)
    redirect_to @location
  end

  def destroy
    @location.destroy
    redirect_to locations_path
  end

  private

  def get_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :description, :image, :admission_fee, :address)
  end
end
