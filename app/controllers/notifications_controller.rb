class NotificationsController < ApplicationController

  def status_inactive
    @notification = Notification.find(params[:id])
    authorize @notification
    @notification.status_active = false
    if @notification.save
      id = @notification.id_notif_type_concerned
      if @notification.notif_type == "new_article" || @notification.notif_type == "upvote_article" || @notification.notif_type == "new_comment_article" || @notification.notif_type == "upvote_comment_article"
        redirect_to articles_path(query: { date_from: -365.days.from_now, category_name: "#{Article.find(id).category.name}", sub_category_names: ["#{Article.find(id).sub_categories.first.name}"] })
      elsif @notification.notif_type == "new_comment" || @notification.notif_type == "upvote_comment" || @notification.notif_type == "new_sub_comment" || @notification.notif_type == "upvote_sub_comment" || @notification.notif_type == "new_answer" || @notification.notif_type == "upvote_answer"
        redirect_to comment_path(Comment.find(id))
      elsif @notification.notif_type == "follow_user"
        redirect_to user_path(User.find(id))
      end
    end
  end


  private

  def notification_params
    params.require(:notification).permit(:status_active)
  end
end
