class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    authorize @user
    @comment_article = CommentArticle.new
  end

   def update
    @user = User.find(params[:id])
    authorize @user
    @user.update(user_params)
    redirect_to user_path(@user)
  end


  private

  def user_params
    params.require(:user).permit(:photo)
  end

end


