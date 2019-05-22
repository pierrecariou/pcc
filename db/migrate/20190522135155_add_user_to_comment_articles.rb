class AddUserToCommentArticles < ActiveRecord::Migration[5.2]
  def change
    add_reference :comment_articles, :user, foreign_key: true
  end
end
