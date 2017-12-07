class Pet < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  serialize :photo

  belongs_to :user
  has_many :tracks
  has_many :albums


  def find_track_user(user)
    if user
      self.tracks.where(:user_id => user.id).first
    else
      nil
    end
  end

end
