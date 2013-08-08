class City < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :state_cities
  has_many :states, :through => :state_cities, :dependent => :destroy
  has_many :hotel_cities
  has_many :hotels, :through => :hotel_cities, :dependent => :destroy
end
