class Article < ApplicationRecord
  # include PgSearch
  # pg_search_scope :search_by_category_and_subcategory,
  #   against: [:category, :sub_category, :description],
  #   associated_against: {
  #     user: [:pseudo, :first_name, :last_name]
  #   },
  #   using: {
  #     tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #   }

  belongs_to :user
  acts_as_votable
  belongs_to :category
  has_many :comments
  has_many :article_sub_categories
  has_many :sub_categories, through: :article_sub_categories

  # after_save :cache_vote_count

  # scope :from_category, ->(category_selected) { where(category: category_selected) }
  scope :from_category, ->(category_name) { includes(:category).where(category: Category.where(name: category_name)) }
  scope :from_sub_categories, ->(sub_category_names) { includes(:sub_categories).where(sub_categories: { name: sub_category_names }) }


  validates :URL, presence: true
  # validates :URL, uniqueness: true
  validates :category, presence: true


  default_scope { order(upvotes: :desc) }

end
