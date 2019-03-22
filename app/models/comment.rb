class Comment < ApplicationRecord
  has_many :sub_comments
  belongs_to :user
  belongs_to :article

  default_scope { order(upvotes: :desc) }
end
