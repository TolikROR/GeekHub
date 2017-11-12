class City < ApplicationRecord
  belongs_to :country


  has_many :aircrafts
  has_many :landing_airports
  has_many :takeoff_airports
end
