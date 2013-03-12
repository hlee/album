class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  has_many :albums
  has_many :friend_links
  has_many :friends, through: :friend_links

  has_many :ofriend_links, foreign_key: :friend_id, class_name: :FriendLink
  has_many :ofriends, through: :ofriend_links, source: :user

  def allfriends
    friends + ofriends
  end
end
