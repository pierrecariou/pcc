class CommentArticle < ApplicationRecord
  belongs_to :article
  belongs_to :user
  has_many :by_user_comment_article_upvotes

  validates :text, presence: true

  default_scope { order(id: :asc) }
end
