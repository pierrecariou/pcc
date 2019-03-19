class SubCommentsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
    @comment = Comment.find(params[:comment_id])
    @sub_comment = SubComment.new
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.find(params[:comment_id])
    @sub_comment = SubComment.new(sub_comment_params)
    @sub_comment.comment = @comment
    @sub_comment.user = current_user
    months = ["nil", "janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre" "décembre"]
    @sub_comment.date = Time.now.to_s.split()[0].split("-")[2] + " " + months[Time.now.to_s.split()[0].split("-")[1].to_i] + " " + Time.now.to_s.split()[0].split("-")[0]
    if @sub_comment.save
      respond_to do |format|
        format.html { redirect_to request.referrer, anchor: "anchor-sub-com" }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
    end
  end

  private

  def sub_comment_params
    params.require(:sub_comment).permit(:title, :text, :source, :stars, :date)
  end
end
