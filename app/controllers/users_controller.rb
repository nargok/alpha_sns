class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :set_user, only: [:show, :edit, :password_edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # save機能
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:danger] = "ログインに失敗しました"
      render :new
    end
  end

  def show
  end

  def edit
  end

  def password_edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      # TODO 入力エラーのメッセージを出力する
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name)
  end
end