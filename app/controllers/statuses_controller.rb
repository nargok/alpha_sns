class StatusesController < ApplicationController
  def index
    @statuses = Status.all.order(created_at: 'desc').includes(:user).includes(:comments)
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    @status.user_id = current_user.id

    if @status.save
      redirect_to root_path
    else
      # TODO flashメッセージを実装する
    end
  end

  def show
    @status = Status.find(params[:id])
    @comment = Comment.new
    @comments = @status.comments.order(created_at: 'desc')
  end

  private

  def status_params
    params.require(:status).permit(:body)
  end
end
