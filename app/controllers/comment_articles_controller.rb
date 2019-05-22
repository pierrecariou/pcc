class CommentArticlesController < ApplicationController
  def new
    @user = current_user
    @comment_article = CommentArticle.new
    authorize @comment_article
  end

  def create
    @article = Article.find(params[:article_id])
    @comment_article = CommentArticle.new(comment_article_params)
    authorize @comment_article
    @comment_article.article = @article
    @comment_article.user = current_user
    months = ["nil", "janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre" "décembre"]
    @comment_article.date = Time.now.to_s.split()[0].split("-")[2] + " " + months[Time.now.to_s.split()[0].split("-")[1].to_i] + " " + Time.now.to_s.split()[0].split("-")[0]
    if @comment_article.save
      respond_to do |format|
        format.html {redirect_to request.referrer}
        format.js
      end
    else
      raise
    end
  end

  private

   def comment_article_params
    params.require(:comment_article).permit(:text, :likes, :date, :user_id)
  end
end
