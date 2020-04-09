class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def index
    @posts = Post.all
  end

  def post_user(post)
    @user = (User.find_by(id: post.user_id))
    @post_username = @user.username
  end

  private

  def post_params
    p "current user below"
    p current_user
    params.require(:post).permit(:message).merge(user: current_user)
  end
end
