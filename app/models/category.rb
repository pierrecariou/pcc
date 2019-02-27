class Category < ApplicationRecord
  has_many :articles
  has_many :sub_categories
  NAMES = %w(Ecologie Politique Economie Numérique)
  validates :name, inclusion: { in: NAMES }
end
