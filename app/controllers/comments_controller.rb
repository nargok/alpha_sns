class CommentsController < ApplicationController
  def create
    @status = Status.find(params[:status_id])
    @comment = @status.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      render :index
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :status_id, :user_id)
  end

end
