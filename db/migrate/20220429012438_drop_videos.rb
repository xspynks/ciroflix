class DropVideos < ActiveRecord::Migration[7.0]
  def change
    drop_table :videos
    drop_table :customers
    drop_table :watches
  end
end
