class LikesController < ApplicationController
  def create
    new_like = Like.new
    new_like.user_id = current_user.id
    new_like.post_id = params[:post_id]
    flash[:notice] = new_like.errors.full_messages.to_sentence unless new_like.save
    @post = Post.find(params[:post_id])
    redirect_to user_post_path(@post.user_id, @post.id)
  end

  def destroy
    Like.destroy(params[:id])
    @post = Post.find(params[:post_id])
    redirect_to user_post_path(@post.user_id, @post.id)
  end
end