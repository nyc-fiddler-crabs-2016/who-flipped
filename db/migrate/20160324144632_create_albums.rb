class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.date :release_date
      t.integer :artist_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
