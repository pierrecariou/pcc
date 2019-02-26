class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @article = Article.find(params[:article_id])
    @comment = Comment.new
  end

  def create
    @comment.article = Article.find(params[:article_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to article_comments_path(@comment)
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :text, :source, :upvotes, :date)
  end
end

