class Country < ApplicationRecord
  has_many :cities

  mount_uploader :avatar, AvatarUploader

  self.per_page = 1
end
