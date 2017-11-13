class Country < ApplicationRecord
  has_many :cities
  has_many :landing_airports
  has_many :takeoff_airports
  has_many :users

  mount_uploader :avatar, AvatarUploader

  self.per_page = 1
end
