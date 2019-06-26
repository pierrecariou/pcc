class AnswersController < ApplicationController
  def new
    @user = current_user
    @answer = Answer.new
    authorize @answer
  end

  def create
    @comment = Comment.find(params[:comment_id])
    @sub_comment = SubComment.find(params[:sub_comment_id])
    @answer = Answer.new(answer_params)
    authorize @answer
    @answer.sub_comment = @sub_comment
    @answer.user = current_user
    months = ["nil", "janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre" "décembre"]
    @answer.date = Time.now.to_s.split()[0].split("-")[2] + " " + months[Time.now.to_s.split()[0].split("-")[1].to_i] + " " + Time.now.to_s.split()[0].split("-")[0]
    if @answer.save
      if current_user.id != @sub_comment.user.id
        notification = Notification.new(id_notif_type_concerned: @comment.id, notif_type: "new_answer", notif_user_id: current_user.id, message: "#{current_user.first_name} #{current_user.last_name} a répondu à votre contribution #{@sub_comment.title}")
        notification.user = @sub_comment.user
        notification.save
        @sub_comment.user.red_circle_number += 1
        @sub_comment.user.save
      end
      @sub_comment.answers.each do |answer|
        if current_user.id != answer.user.id && @sub_comment.user.id != answer.user.id
          notification = Notification.new(id_notif_type_concerned: @comment.id, notif_type: "new_answer", notif_user_id: current_user.id, message: "#{current_user.first_name} #{current_user.last_name} a commenté votre réponse à la contribution #{@sub_comment.title}")
          notification.user = answer.user
          notification.save
          answer.user.red_circle_number += 1
          answer.user.save
        end
      end
      respond_to do |format|
        format.html {redirect_to comment_path(@comment)}
        format.js
      end
    else
      raise
    end
  end


  def upvote
    @answer = Answer.find(params[:id])
    authorize @answer
    unless @answer.by_user_answer_upvotes.any? {|by_user_answer_upvote| by_user_answer_upvote.user == current_user}
      new_upvote = ByUserAnswerUpvote.create
      new_upvote.answer = @answer
      new_upvote.user = current_user
      new_upvote.save
      @answer.increment!(:likes)
      if @answer.save
      if current_user.id != @answer.user.id
        notification = Notification.new(id_notif_type_concerned: @answer.sub_comment.comment.id, notif_type: "upvote_answer", notif_user_id: current_user.id, message: "#{current_user.first_name} #{current_user.last_name} aime votre réponse à la contribution #{@answer.sub_comment.title}")
        notification.user = @answer.user
        notification.save
        @answer.user.red_circle_number += 1
        @answer.user.save
      end
        respond_to do |format|
          format.html { redirect_to request.referrer }
          format.js
        end
      end
    end
  end

  private

   def answer_params
    params.require(:answer).permit(:text, :likes, :date, :user_id)
  end
end
