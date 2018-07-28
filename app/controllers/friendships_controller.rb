class FriendshipsController < ApplicationController
  before_action :set_request, only: [:approve, :reject, :destroy]

  def index
    friends = Friendship.where("user_id = ? or friend_id = ?", current_user.id, current_user.id).order(created_at: 'desc')
    @friends = friends.reject{|e| e[:reject] == true }
  end

  def approval_list
    @requests = Friendship.where(friend_id: current_user.id, accept: nil, reject: nil).order(created_at: 'desc')
  end

  def approve
    @request.accept = true
    @request.save
    redirect_to friend_request_approval_path
  end

  def reject
    @request.reject = true
    @request.save
    redirect_to friend_request_approval_path
  end

  def destroy
    @request.destroy
    redirect_to friendships_path
  end

  private

  def set_request
    @request = Friendship.find(params[:id])
  end
end
