class State < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :state_cities
  has_many :cities, :through => :state_cities, :dependent => :destroy
  has_many :hotel_states
  has_many :hotels, :through => :hotel_states, :dependent => :destroy
end
