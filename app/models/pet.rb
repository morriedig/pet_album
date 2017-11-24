class Pet < ApplicationRecord

  belongs_to :user
  has_many :track
  has_many :albums


end
