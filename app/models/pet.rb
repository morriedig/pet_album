class Pet < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  serialize :photo

  belongs_to :user
  has_many :tracks
  has_many :albums


end
