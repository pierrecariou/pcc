class Answer < ApplicationRecord
  belongs_to :sub_comment
  belongs_to :user
  has_many :by_user_answer_upvotes

  validates :text, presence: true
end
