class RelationshipsController < ApplicationController
before_action :skip_authorization

  def follow_user
      @user = User.find params[:user_name]
    if current_user.follow @user.id
      respond_to do |format|
        format.html { redirect_to request.referrer }
        format.js
      end
    end
  end

  def unfollow_user
      @user = User.find params[:user_name]
    if current_user.unfollow @user.id
      respond_to do |format|
        format.html { redirect_to request.referrer }
        format.js
      end
    end
  end
end
