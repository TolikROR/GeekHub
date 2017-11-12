class Faculty < ApplicationRecord
  belongs_to :university

  has_many :kafedras
end
