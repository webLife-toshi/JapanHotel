class StatesController < ApplicationController
   before_filter :h_search
   def index
   end

   def show
     @state = State.find(params[:id])
     @city = @state.cities
     @hotel = @state.hotels
   end
end
