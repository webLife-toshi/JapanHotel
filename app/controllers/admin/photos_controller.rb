class Admin::PhotosController < Admin::AdminController

 before_filter :authenticate_administrator
  def index
    @photoable = find_photoable
    @photo = @photoable.photos
  end

  def create
    @photoable = find_photoable
    @photo = @photoable.photos.build(params[:photo])
    if @photo.save
      flash[:notice] = "Successfully saved photo."
      redirect_to [:admin, @photoable]
    else
      render :action => 'new'
    end
  end

  def destroy
    @photoable = find_photoable
    @photo = Photo.find(params[:id])
    @photo.destroy
      if @photo.destroy
          redirect_to [:admin,@photoable], notice: "Photo deleted."
      end
  end

  def find_photoable
    params.each do |name, value|
      if name =~ /(.+)_id$/
         return $1.classify.constantize.find(value)
      end
    end
    nil
  end
end
