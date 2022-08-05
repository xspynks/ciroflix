class AddSlugToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :slug, :string
  end
end
