module FriendshipsHelper

  def request_is_in_progress?(id)
    friendship = Friendship.find(id)
    friendship.accept == nil && friendship.reject == nil
  end

end
