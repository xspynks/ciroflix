class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.integer :category, default: 0
      t.string :url
      t.integer :status, default: 1

      t.timestamps
    end
  end
end
