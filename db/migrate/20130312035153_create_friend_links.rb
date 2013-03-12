class CreateFriendLinks < ActiveRecord::Migration
  def change
    create_table :friend_links do |t|
      t.integer :friend_id
      t.references :user

      t.timestamps
    end
    add_index :friend_links, :user_id
  end
end
