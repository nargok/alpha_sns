class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, :class_name => 'User'
  validates :user_id, uniqueness: { scope: [:friend_id] }

  paginates_per 5

  SEARCH_CONDITION = "user_id   = ?
                  AND friend_id = ?
                  AND accept    = ?
                  AND reject    = ?"

  def self.requested(user_id, friend_id)
    Friendship.where("user_id = ? AND friend_id = ?", user_id, friend_id)
  end


  scope :accepted, -> { where(accept: true) }

  scope :rejected, -> { where(reject: true) }

  def self.rejected(user_id, friend_id)
    Friendship.where(SEARCH_CONDITION, user_id, friend_id, nil, true)
  end
end
