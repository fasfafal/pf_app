class CommentsController < ApplicationController
  before_action :authenticate_user!, only: %i[ create destroy ]
  def create
    comment = current_user.comments.build(comment_params)
    if comment.save
      redirect_to free_post_path(comment.free_post), success: "投稿した"
    else
      redirect_to free_post_path(comment.free_post), danger: "失敗した"
    end
  end
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to free_post_path(@comment.free_post), success: "コメントを削除しました"
  end

  private

  def comment_params
    params.require(:comment).permit(:body).merge(free_post_id: params[:free_post_id])
  end
end
