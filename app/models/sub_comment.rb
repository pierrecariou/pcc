class SubComment < ApplicationRecord
  belongs_to :comment
  belongs_to :user
  has_many :answers
  has_many :by_user_stars
  DEFAULT_STATE = ["pour", "contre", "neutre"]
  validates_inclusion_of :state, in: DEFAULT_STATE
  validates :title, presence: true
  validates :text, presence: true

  default_scope { order(id: :asc) }
end
