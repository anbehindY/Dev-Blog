class Api::V1::CommentsController < ApplicationController
  def index
    post = Post.find_by_id(params[:post_id])
    comments = post.comments

    render json: comments
  end

  def create
    user = User.find_by_id(params[:user_id])
    post = Post.find_by_id(params[:post_id])
    comment = post.comments.new(comment_params)
    comment.author = user

    if comment.save
      render json: { success: 'Comment created successfully' }
    else
      render json: { errors: comment.errors.full_messages }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
