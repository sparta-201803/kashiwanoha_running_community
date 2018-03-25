class FashionsCommentsController < ApplicationController
  def index
    @fashions_comments = Fashion_Comment.all
  end

  def new
    @fashion_comment = Fashion_Comment.new
  end

  def create
    @fashion_comment = Fashion_Comment.new(fashion_comment_params)
    @fashion_comment.user_id = 1
    @fashion_comment.save
    puts @fashion_comment.errors.full_messages
    redirect_to @fashion_comment
  end

  def edit
    @fashion_comment = Fashion_Comment.find(params[:id])
  end

  def update
  end

  def show
    @fashion_comment = Fashion_Comment.find(params[:id])
  end

  def destroy
  end

  def fashion_comment_params
    params.require(:fashion_comment).permit(
      :user_id,
      :text
      )
  end
end
