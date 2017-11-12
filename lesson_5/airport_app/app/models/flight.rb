class Flight < ApplicationRecord
  belongs_to :takeoff_airport
  belongs_to :landing_airport

  has_many :ticket
end
