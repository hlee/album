class AddResourceToImage < ActiveRecord::Migration
  def change
    add_column :images, :image_src, :string
  end
end
