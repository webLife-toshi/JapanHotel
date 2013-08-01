class Hotel < ActiveRecord::Base
   attr_accessible :hotel_id, :area_id, :facility_id

has_many :hotel_areas
has_many :areas, :through => :hotel_areas, :dependent => :destroy
has_many :photos, :as => :photoable, :dependent => :destroy
has_many :hotel_facilities
has_many :facilities, :through => :hotel_facilities, :dependent => :destroy
end
