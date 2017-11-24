class Album < ApplicationRecord

  belongs_to :pet
  belongs_to :user
  has_many :comments
  has_many :track
  has_many :like

end
