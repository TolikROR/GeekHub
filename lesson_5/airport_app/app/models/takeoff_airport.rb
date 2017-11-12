class TakeoffAirport < ApplicationRecord
  has_many :flights

  belongs_to :country
  belongs_to :city
end
