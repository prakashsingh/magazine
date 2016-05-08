class CommentsController < ApplicationController

  def create
    Comment.create(comment_params)
    redirect_to :back
  end

  def destroy
    comment = Comment.find(params[:comment_id])
    comment.delete
    redirect_to :back
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id, :article_id, :parent_id)
  end

end
