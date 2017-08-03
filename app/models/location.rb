class Location < ActiveRecord::Base
  
  has_many :plants
  
end