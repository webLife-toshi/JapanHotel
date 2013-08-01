class HotelArea < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :area
end
