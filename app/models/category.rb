class Category < ApplicationRecord
  has_many :articles
  has_many :sub_categories
end
