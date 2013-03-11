class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :album_id
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
