class CommentsController < ApplicationController
  def new
    new_comment = Comment.new
    respond_to do |format|
      format.html { render :new, locals: { new_comment: new_comment } }
    end
  end
end