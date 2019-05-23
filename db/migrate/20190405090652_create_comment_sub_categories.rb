class CreateCommentSubCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_sub_categories do |t|
      t.references :sub_category, foreign_key: true
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
