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
  belongs_to :category
  has_many :article_sub_categories, dependent: :destroy
  has_many :sub_categories, through: :article_sub_categories
  has_many :by_user_upvotes
  has_many :comment_articles

  # after_save :cache_vote_count

  # scope :from_category, ->(category_selected) { where(category: category_selected) }
  scope :from_category, ->(category_name) { includes(:category).where(category: Category.where(name: category_name)) }
  scope :from_sub_categories, ->(sub_category_names) { includes(:sub_categories).where(sub_categories: { name: sub_category_names }) }

  scope :debat, ->(debat_title) { includes(:comments).where(comments: { title: debat_title }) }

  scope :from_date, ->(date_from) { where("precise_date >= ?", date_from)}

  validates :URL, presence: true, uniqueness: true, :format => URI::regexp(%w(http https))
  # validates :URL, uniqueness: true
  validates :category, presence: true
  validates :sub_categories, presence: true


  default_scope { order(upvotes: :desc) }

end
