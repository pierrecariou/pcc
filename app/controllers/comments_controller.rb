class CommentsController < ApplicationController

  def index
    @comments = Comment.where(article_id: params[:article_id])
  end

  def new
    @article = article.find(params[:article_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.article = Article.find(params[:article_id])
    @comment.user = current_user
    @comment.save
  end

  private

  def comment_params
    params.require(:comments).permit(:title, :text, :source, :upvotes, :date)
  end
end

