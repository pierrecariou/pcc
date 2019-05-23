class CreateByUserCommentUpvotes < ActiveRecord::Migration[5.2]
  def change
    create_table :by_user_comment_upvotes do |t|
      t.integer :user_id
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
