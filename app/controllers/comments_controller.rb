class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @article = Article.find(params[:article_id])
    @comment = Comment.new
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.new(comment_params)
    @comment.article = @article
    @comment.user = current_user
    if @comment.save
      respond_to do |format|
        format.html { redirect_to article_path(@article) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
    end
  end

  # def participants
  #   array = []
  #     @article.comments.each do |comment|
  #       array << comment.user.pseudo
  #     end
  #     new_array = array.uniq
  #     new_array.each do |element|
  #       element
  #     end
  # end

  private

  def comment_params
    params.require(:comment).permit(:title, :text, :source, :upvotes, :date)
  end
end

