class Like < ApplicationRecord

  belongs_to :user
  belongs_to :album,:counter_cache => true


end
