class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.text :title
      t.text :directory
      t.integer :tempo
      t.text :key
      t.text :sample
      t.timestamps null: false
    end
  end
end
