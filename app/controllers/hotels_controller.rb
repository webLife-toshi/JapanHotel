class HotelsController < ApplicationController
  before_filter :h_search
  def show
    @hotel = Hotel.find(params[:id])
    @facility = @hotel.facilities
    @photo = @hotel.photos
    @area = @hotel.areas
    @amenity = @hotel.amenities
    @recreation = @hotel.recreations
    @state = @hotel.states
    @city = @hotel.cities
  end
end
