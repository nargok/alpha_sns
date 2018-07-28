module UsersHelper
  def friend_request_is_requested?(user_id, friend_id)
    Friendship.requested(user_id, friend_id).exists? ||
        Friendship.requested(friend_id, user_id).exists?
  end
end
