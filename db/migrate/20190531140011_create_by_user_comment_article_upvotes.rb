class CreateByUserCommentArticleUpvotes < ActiveRecord::Migration[5.2]
  def change
    create_table :by_user_comment_article_upvotes do |t|
      t.references :comment_article, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
