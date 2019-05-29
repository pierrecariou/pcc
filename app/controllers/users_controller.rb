class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    authorize @user
    if current_user == @user
       @user.photo_url = 'logopcc.png'
    end
    @comment_article = CommentArticle.new
  end

end


