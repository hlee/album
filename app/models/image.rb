class Image < ActiveRecord::Base
  attr_accessible :album_id, :description, :title, :image_src, :image_src_cache
  belongs_to :album
  mount_uploader :image_src, AvatarUploader
end
