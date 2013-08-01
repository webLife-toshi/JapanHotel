class Facility < ActiveRecord::Base
   attr_accessible :hotel_id

   has_many :hotel_facilities
   has_many :hotels, :through => :hotel_facilities, :dependent => :destroy
end
