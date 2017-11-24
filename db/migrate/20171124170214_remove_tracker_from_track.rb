class RemoveTrackerFromTrack < ActiveRecord::Migration[5.1]
  def change
    remove_column :tracks, :tracker, :string
  end
end
