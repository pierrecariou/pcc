class UsersController < ApplicationController

   def index
     @users = policy_scope(User).order(created_at: :desc)
   end

  def show
    @user = User.find(params[:id])
    authorize @user
    @comment_article = CommentArticle.new
  end

   def edit
    @user = User.find(params[:id])
    authorize @user
  end

   def update
    @user = User.find(params[:id])
    authorize @user
    @user.update(user_params)
    redirect_to user_path(@user)
  end


  def remove_photo
    @user = User.find(params[:id])
    authorize @user
    @user[:photo] = "https://res.cloudinary.com/pensercestchouette/image/upload/v1559772286/b12q9dcyzpcgwfwejhcn.png"
    @user.save


    redirect_to user_path(@user)
  end

  def circle_number_update
    @user = User.find(params[:id])
    authorize @user
    @user.red_circle_number = 0

    if @user.save
      respond_to do |format|
        format.html { redirect_to request.referrer }
        format.js
      end
    end
  end


  private

  def user_params
    params.require(:user).permit(:photo, :first_name, :last_name, :pseudo, :age, :activity)
  end

end


