class Ticket < ApplicationRecord
  belongs_to :flight

  has_many :Orders
end
