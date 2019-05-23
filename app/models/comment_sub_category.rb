class CommentSubCategory < ApplicationRecord
  belongs_to :sub_category
  belongs_to :comment
end
