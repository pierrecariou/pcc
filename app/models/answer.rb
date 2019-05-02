class Answer < ApplicationRecord
  belongs_to :sub_comment
  belongs_to :user
end
