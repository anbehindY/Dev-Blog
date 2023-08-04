class Api::V1::CommentsController < ApplicationController
  def index
    @post = Post.find_by_id(params[:post_id])
    @comments = @post.comments
    render json: @comments
  end

  def create
    @post = Post.find_by_id(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.author = current_user

    if @comment.save
      render json: @comment
    else
      render json: { errors: @comment.errors.full_messages }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
