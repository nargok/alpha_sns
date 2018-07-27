class Friendship < ApplicationRecord
  validates :user_id, uniqueness: { scope: [:friend_id] }

  SEARCH_CONDITION = "user_id   = ?
                  AND friend_id = ?
                  AND accept    = ?
                  AND reject    = ?"

  def self.requested(user_id, friend_id)
    Friendship.where("user_id = ? AND friend_id = ?", user_id, friend_id)
  end

  def self.accepted(user_id, friend_id)
    Friendship.where(SEARCH_CONDITION, user_id, friend_id, true, nil)
  end

  def self.rejected(user_id, friend_id)
    Friendship.where(SEARCH_CONDITION, user_id, friend_id, nil, true)
  end
end
