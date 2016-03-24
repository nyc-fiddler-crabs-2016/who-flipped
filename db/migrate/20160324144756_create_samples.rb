class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :name, null: false
      t.integer :song_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
