class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
    @form = LoginForm.new
  end

  def create
    @form = LoginForm.new(login_params)
    if login(@form.email, @form.password)
      redirect_back_or_to(root_path, notice: 'Login successful!!')
    else
      flash.now[:alert] = 'Login failed'
      render action: :new
    end
  end

  def destroy
    logout
    redirect_to(new_session_path, notice: 'Logged out!')
  end

  private
  def login_params
    params.require(:login_form).permit(:email, :password)
  end
end
