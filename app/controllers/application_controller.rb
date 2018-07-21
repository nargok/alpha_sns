class ApplicationController < ActionController::Base
  before_action :require_login

  def not_authenticated
    # デフォルトではroot_pathにリダイレクトするため、
    # ログイン画面へ遷移するように設定する
    redirect_to login_path, alert: "Please login first"
  end
end
