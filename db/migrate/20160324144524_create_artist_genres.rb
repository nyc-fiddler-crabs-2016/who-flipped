class CreateArtistGenres < ActiveRecord::Migration
  def change
    create_table :artist_genres do |t|
      t.integer :artist_id, null: false, index: true
      t.integer :genre_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
