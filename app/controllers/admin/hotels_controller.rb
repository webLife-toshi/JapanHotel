class Admin::HotelsController < Admin::AdminController

  before_filter :authenticate_administrator
  def index
    @hotel = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
    @facility = @hotel.facilities
    @area = @hotel.areas
    @photo = @hotel.photos
  end

  def new
  end

  def create
  end

  def edit
    @hotel = Hotel.find(params[:id])
  end

  def update
    @hotel = Hotel.find(params[:id])
    if @hotel.update_attributes(params[:hotel])
      flash[:success] = "Hotel updated"
      redirect_to [:admin, @hotel]
    else
      render 'edit'
    end
  end

  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy
    flash[:success] = "Hotel Delete"
    redirect_to admin_hotels_path
  end
end
