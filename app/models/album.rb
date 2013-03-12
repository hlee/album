class Album < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  belongs_to :owner, class_name: :User, foreign_key: :user_id
end
