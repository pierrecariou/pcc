class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_many :article_sub_categories
end
