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
  has_many :comments
  has_many :article_sub_categories
  has_many :sub_categories, through: :article_sub_categories
end
