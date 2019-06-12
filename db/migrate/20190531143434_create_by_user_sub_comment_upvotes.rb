class CreateByUserSubCommentUpvotes < ActiveRecord::Migration[5.2]
  def change
    create_table :by_user_sub_comment_upvotes do |t|
      t.references :sub_comment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
