class SubComment < ApplicationRecord
  belongs_to :comment
  belongs_to :user
  has_many :answers
  DEFAULT_STATE = ["pour", "contre", "neutre"]
  validates_inclusion_of :state, in: DEFAULT_STATE

  default_scope { order(id: :asc) }
end
