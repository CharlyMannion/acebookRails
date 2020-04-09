class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    redirect_to users_url
  end

  def show
    @user = User.find_by(id: current_user.id)
    @posts = @user.posts
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
