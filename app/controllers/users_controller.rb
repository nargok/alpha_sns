class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # save機能
    if @user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:danger] = "ログインに失敗しました"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end