class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    # @post = Post.create(post_params)
    @post = current_user.posts.create(post_params)
    redirect_to posts_url
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    p "current user below"
    p current_user
    params.require(:post).permit(:message).merge(user: current_user)
  end
end
