class University < ApplicationRecord
  belongs_to :city

  has_many :faculties
  has_many :teachers
end
