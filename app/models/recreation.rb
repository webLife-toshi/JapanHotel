class Recreation < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :hotel_recreations
  has_many :hotels, :through => :hotel_recreations, :dependent => :destroy
end
