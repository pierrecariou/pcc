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
      respond_to do |format|
        format.html {redirect_to comment_path(@comment)}
        format.js
      end
    else
      raise
    end
  end

  private

   def answer_params
    params.require(:answer).permit(:text, :likes, :date, :user_id)
  end
end
