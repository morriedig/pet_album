class Album < ApplicationRecord
  mount_uploaders :photos, PhotoUploader
  serialize :photos

  belongs_to :pet
  belongs_to :user
  has_many :comments
  has_many :likes

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end 

  def find_like_user(user)
    if user
      self.likes.where(:user_id => user.id).first
    else
      nil
    end
  end


end
