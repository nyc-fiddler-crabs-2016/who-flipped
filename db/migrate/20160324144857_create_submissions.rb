class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :arist_id
      t.integer :album_id
      t.integer :song_id
      t.integer :sample_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
