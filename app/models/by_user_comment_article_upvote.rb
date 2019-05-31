class ByUserCommentArticleUpvote < ApplicationRecord
  belongs_to :comment_article
  belongs_to :user
end
