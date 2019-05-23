class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    authorize @user
    @comment_article = CommentArticle.new
  end

end
