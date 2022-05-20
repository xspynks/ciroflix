class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.integer :category, default: 1
      t.string :youtube_url
      t.string :youtube_id
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
