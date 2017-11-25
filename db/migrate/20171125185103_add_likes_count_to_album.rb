class AddLikesCountToAlbum < ActiveRecord::Migration[5.1]
  def change
     add_column :albums, :likes_count, :integer, :default => 0

    Album.pluck(:id).each do |i|
      Album.reset_counters(i, :likes) # 全部重算一次
    end

  end
end
