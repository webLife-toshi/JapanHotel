class Area < ActiveRecord::Base
   attr_accessible :city, :district, :state, :hotel_id, :tag_list

   acts_as_taggable
   has_many :hotel_areas
   has_many :hotels, :through => :hotel_areas, :dependent => :destroy
end
