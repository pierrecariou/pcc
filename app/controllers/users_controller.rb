class UsersController < ApplicationController

   def index
     @users = policy_scope(User).order(created_at: :desc)
   end

  def show
    @user = User.find(params[:id])
  end

end
