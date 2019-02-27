class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :article_sub_categories
  has_many :articles, through: :article_sub_categories
end
