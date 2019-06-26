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
    if current_user.id != @article.user.id
      notification = Notification.new(id_notif_type_concerned: @article.id, notif_type: "new_comment_article", notif_user_id: current_user.id, message: "#{current_user.first_name} #{current_user.last_name} a commenté votre article #{@article.title}")
      notification.user = @article.user
      notification.save
      @article.user.red_circle_number += 1
      @article.user.save
    end
    users = []
       @article.comment_articles.each do |comment_article|
        if current_user.id != comment_article.user.id && @article.user.id != comment_article.user.id && !users.include?(comment_article.user.id)
          users << comment_article.user.id
          notification = Notification.new(id_notif_type_concerned: @article.id, notif_type: "new_comment_article", notif_user_id: current_user.id, message: "#{current_user.first_name} #{current_user.last_name} a commenté l'article #{@article.title}")
          notification.user = comment_article.user
          notification.save
          comment_article.user.red_circle_number += 1
          comment_article.user.save
        end
      end
      respond_to do |format|
        format.html {redirect_to request.referrer}
        format.js
      end
    else

    end
  end



   def upvote
    @comment_article = CommentArticle.find(params[:id])
    authorize @comment_article
      unless @comment_article.by_user_comment_article_upvotes.any? {|by_user_comment_article_upvote| by_user_comment_article_upvote.user == current_user}
        new_upvote = ByUserCommentArticleUpvote.create
        new_upvote.comment_article = @comment_article
        new_upvote.user = current_user
        new_upvote.save
      @comment_article.increment!(:likes)
      if @comment_article.save
          if current_user.id != @comment_article.user.id
          notification = Notification.new(id_notif_type_concerned: @comment_article.article.id, notif_type: "upvote_comment_article", notif_user_id: current_user.id, message: "#{current_user.first_name} #{current_user.last_name} aime votre commentaire de l'article #{@comment_article.article.title}")
          notification.user = @comment_article.user
          notification.save
          @comment_article.user.red_circle_number += 1
          @comment_article.user.save
        end
        respond_to do |format|
          format.html { redirect_to request.referrer }
          format.js
        end
      end
    end
  end

  private

   def comment_article_params
    params.require(:comment_article).permit(:text, :likes, :date, :user_id)
  end
end
