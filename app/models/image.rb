class Image < ActiveRecord::Base
  attr_accessible :album_id, :description, :title
  belongs_to :album
end
