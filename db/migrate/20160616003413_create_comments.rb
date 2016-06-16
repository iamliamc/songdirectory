class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.string :content
      t.references :song
      t.timestamps null: false
    end
  end
end
