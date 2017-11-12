class Group < ApplicationRecord
  belongs_to :kafedra

  has_many :students
end
