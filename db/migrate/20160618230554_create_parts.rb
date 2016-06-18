class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.belongs_to :song, index: true 
      t.belongs_to :contributor, index: true
      t.timestamps null: false
    end
  end
end
