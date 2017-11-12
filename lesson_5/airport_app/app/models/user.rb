class User < ApplicationRecord
  belongs_to :gender
  belongs_to :country

  has_many :orders
end
