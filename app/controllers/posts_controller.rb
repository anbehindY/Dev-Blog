class PostsController < ApplicationController
  def index
    @user = User.find_by_id(params[:id])
    @posts = @user.posts
  end

  def show
    @user = User.find_by_id(params[:id])
    @post = @user.posts.find_by_id(params[:post_id])
  end
end
