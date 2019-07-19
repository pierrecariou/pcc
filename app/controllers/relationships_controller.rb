class RelationshipsController < ApplicationController
before_action :skip_authorization

  def follow_user
      @user = User.find params[:user_name]
    if current_user.follow @user.id
      notification = Notification.new(id_notif_type_concerned: current_user.id, notif_type: "follow_user", notif_user_id: current_user.id, message: "#{current_user.first_name} #{current_user.last_name} s'est abonné!")
      notification.user = @user
      notification.save
      @user.red_circle_number += 1
      @user.save
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
