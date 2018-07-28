class FriendshipsController < ApplicationController
  def index
    @friends = current_user.friendships.accepted.order(created_at: 'desc')
  end
end
