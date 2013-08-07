class HotelAmenity < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :hotel
  belongs_to :amenity
end
