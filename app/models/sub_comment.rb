class SubComment < ApplicationRecord
  belongs_to :comment
  belongs_to :user
  has_many :answers

  default_scope { order(id: :asc) }
end
