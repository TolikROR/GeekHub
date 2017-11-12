class Country < ApplicationRecord
  has_many :cities
  has_many :landing_airports
  has_many :takeoff_airports
  has_many :users
end
