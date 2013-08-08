class AreasController < ApplicationController
  before_filter :h_search
  def show
     @area = Area.find(params[:id])
     @hotel = @area.hotels
  end

  def area_search
    @area = Area.all
  end

end
