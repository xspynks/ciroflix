class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.string :file
      t.references :picturable, polymorphic: true, null: false

      t.timestamps
    end
  end
end