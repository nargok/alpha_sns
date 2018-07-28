module FriendshipsHelper

  def request_is_in_progress?(id)
    friendship = Friendship.find(id)
    friendship.accept == nil && friendship.reject == nil
  end

  def get_friend_name(friendship)
    if friendship.user.id == current_user.id
      return friendship.friend.name
    else
      return friendship.user.name
    end
  end

end
