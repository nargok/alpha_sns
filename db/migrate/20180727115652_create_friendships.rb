class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.belongs_to :user
      t.belongs_to :friend, class: 'User'
      t.boolean :accept
      t.boolean :reject
      t.timestamps
    end

    add_index :friendships, [:user_id, :friend_id], unique: true
  end
end
