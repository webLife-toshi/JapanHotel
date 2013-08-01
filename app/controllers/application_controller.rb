class ApplicationController < ActionController::Base
  protect_from_forgery

  include SessionsHelper
  
   def hotel_search 
     @hotels = Hotel.search(params[:search])
   end
end
