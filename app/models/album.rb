class Album < ApplicationRecord
  mount_uploaders :photos, PhotoUploader
  serialize :photos

  belongs_to :pet
  belongs_to :user
  has_many :comments
  has_many :likes

end
