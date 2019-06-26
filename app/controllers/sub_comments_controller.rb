class SubCommentsController < ApplicationController
  def new
    @comment = Comment.find(params[:comment_id])
    @sub_comment = SubComment.new
  end

  def create
    @comment = Comment.find(params[:comment_id])
    @sub_comment = SubComment.new(sub_comment_params)
    authorize @sub_comment
    @sub_comment.comment = @comment
    @sub_comment.user = current_user
    months = ["nil", "janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre" "décembre"]
    @sub_comment.date = Time.now.to_s.split()[0].split("-")[2] + " " + months[Time.now.to_s.split()[0].split("-")[1].to_i] + " " + Time.now.to_s.split()[0].split("-")[0]
    if @sub_comment.save
    if current_user.id != @comment.user.id
      notification = Notification.new(id_notif_type_concerned: @comment.id, notif_type: "new_sub_comment", notif_user_id: current_user.id, message: "#{current_user.first_name} #{current_user.last_name} a participé à votre débat #{@comment.title}")
      notification.user = @comment.user
      notification.save
      @comment.user.red_circle_number += 1
      @comment.user.save
    end
      respond_to do |format|
        format.html {redirect_to comment_path(@comment)}
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
    end
  end

   def upvote
    @sub_comment = SubComment.find(params[:id])
    authorize @sub_comment
     unless @sub_comment.by_user_sub_comment_upvotes.any? {|by_user_sub_comment_upvote| by_user_sub_comment_upvote.user == current_user}
      new_upvote = ByUserSubCommentUpvote.create
      new_upvote.sub_comment = @sub_comment
      new_upvote.user = current_user
      new_upvote.save
      @sub_comment.increment!(:stars)
      @comment = @sub_comment.comment
      @comment.increment!(:upvotes)
      if @sub_comment.save && @comment.save
         if current_user.id != @sub_comment.user.id
          notification = Notification.new(id_notif_type_concerned: @sub_comment.comment.id, notif_type: "upvote_sub_comment", notif_user_id: current_user.id, message: "#{current_user.first_name} #{current_user.last_name} a donné un vote positif à votre contribution #{@sub_comment.title}")
          notification.user = @sub_comment.user
          notification.save
          @sub_comment.user.red_circle_number += 1
          @sub_comment.user.save
        end
        respond_to do |format|
          format.html { redirect_to request.referrer }
          format.js
        end
      end
    end
  end

  private

  def sub_comment_params
    params.require(:sub_comment).permit(:title, :state, :text, :source, :stars, :date)
  end
end
