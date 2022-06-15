class CreateConstants < ActiveRecord::Migration[7.0]
  def change
    create_table :constants do |t|
      t.bigint :tweet_since_id
      t.timestamps
    end
  end
end
