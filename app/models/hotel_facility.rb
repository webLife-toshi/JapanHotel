class HotelFacility < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :facility
end
