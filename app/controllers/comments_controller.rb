class CommentsController < ApplicationController
  def new
    new_comment = Comment.new
    respond_to do |format|
      format.html { render :new, locals: { new_comment: new_comment } }
    end
  end

  def create
    new_comment = Comment.new(params.require(:comment).permit(:text))
    new_comment.user_id = current_user.id
    new_comment.post_id = params.require(:post_id)

    respond_to do |format|
      format.html do
        if new_comment.save
          flash[:success] = "Comment created!"
          redirect_to '/'
        else
          flash.now[:error] = 'Error: Comment could not be saved...'
          render :new, locals: { new_comment: new_comment }
        end
      end
    end
  end
end
