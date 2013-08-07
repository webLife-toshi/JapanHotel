class Amenity < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :hotel_amenities
  has_many :hotels, :through => :hotel_amenities, :dependent => :destroy
end
