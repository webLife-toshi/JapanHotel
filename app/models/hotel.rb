class Hotel < ActiveRecord::Base
   attr_accessible :hotel_id, :area_id, :facility_id, :tag_list, :amenity_id

   acts_as_taggable
has_many :hotel_areas
has_many :areas, :through => :hotel_areas, :dependent => :destroy
has_many :photos, :as => :photoable, :dependent => :destroy
has_many :hotel_facilities
has_many :facilities, :through => :hotel_facilities, :dependent => :destroy
has_many :hotel_amenities
has_many :amenities, :through => :hotel_amenities, :dependent => :destroy
has_many :hotel_recreations
has_many :recreations, :through => :hotel_recreations, :dependent => :destroy
end
