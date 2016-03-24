class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name, null: false
      t.integer :album_id, null: false, index: true
      t.integer :original_id     

      t.timestamps null: false
    end
  end
end
