class CreateContributors < ActiveRecord::Migration
  def change
    create_table :contributors do |t|
      t.string :name
      t.string :band
      t.integer :age
      t.string :bio
      t.timestamps null: false
    end
  end
end
