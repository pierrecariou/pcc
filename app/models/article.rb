class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_many :article_sub_categories
  has_many :sub_categories, through: :article_sub_categories
end
