class CommentArticle < ApplicationRecord
  belongs_to :article
  belongs_to :user

  validates :text, presence: true

  default_scope { order(id: :asc) }
end
