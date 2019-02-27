class ArticleSubCategory < ApplicationRecord
  belongs_to :sub_category
  belongs_to :article
end
