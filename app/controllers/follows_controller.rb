# class FollowsController < ApplicationController
#   def new
#     @user = current_user
#     @follow = Follow.new
#     authorize @follow
#   end

#   def create
#     @follow = Follow.new(follow_params)
#     authorize @follow
#     @follow.user = current_user

#     if @follow.save
#       respond_to do |format|
#         format.html { redirect_to request.referrer }
#         format.js
#       end
#     else
#       raise
#     end
#   end


#   private

#    def follow_params
#     params.require(:follow).permit(:following_id, :user_id)
#   end
# end
