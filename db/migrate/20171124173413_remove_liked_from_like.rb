class RemoveLikedFromLike < ActiveRecord::Migration[5.1]
  def change
    remove_column :likes, :liked, :string
  end
end
