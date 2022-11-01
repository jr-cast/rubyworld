class PostsController < ApplicationController

  def new
    new_post = Post.new
    respond_to do |format|
      format.html { render :new, locals: { new_post: new_post } }
    end
  end

  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
  end
end
