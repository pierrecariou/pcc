class SubComment < ApplicationRecord
  belongs_to :comment
  belongs_to :user

  default_scope { order(id: :asc) }
end
