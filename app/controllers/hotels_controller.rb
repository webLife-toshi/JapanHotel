class HotelsController < ApplicationController

  def show
    @hotel = Hotel.find(params[:id])
    @facility = @hotel.facilities
    @photo = @hotel.photos
    @area = @hotel.areas
  end
end
