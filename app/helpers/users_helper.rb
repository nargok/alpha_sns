module UsersHelper

  def friend_request_is_requested?(id1, id2)
    Friendship.requested(id1, id2).exists? ||
        Friendship.requested(id2, id1).exists?
  end

  def friend_request_is_approved?(id1, id2)
    friendship = Friendship.find_friendship(id1, id2)
    friendship.accept == true
  end

  def friend_request_is_rejected?(id1, id2)
    friendship = Friendship.find_friendship(id1, id2)
    friendship.reject == true
  end
end
