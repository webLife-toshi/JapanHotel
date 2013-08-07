class HotelRecreation < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :recreation
end
