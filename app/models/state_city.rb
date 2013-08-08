class StateCity < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :state
  belongs_to :city
end
