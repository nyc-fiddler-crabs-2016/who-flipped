class CreateSampleSongs < ActiveRecord::Migration
  def change
    create_table :sample_songs do |t|
      t.integer :song_id, null: false, index: true
      t.integer :sample_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
