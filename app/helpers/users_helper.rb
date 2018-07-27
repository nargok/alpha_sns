module UsersHelper
  def friend_request_is_requested?(user_id, friend_id)
    Friendship.requested(user_id, friend_id).exists?
  end

  def friend_request_is_accepted?(user_id, friend_id)
    friendship = Friendship.find_request(user_id, friend_id)
    friendship.accept == true
  end

  def friend_request_is_rejected?(user_id, friend_id)
    friendship = Friendship.find_request(user_id, friend_id)
    friendship.reject == true
  end

end
