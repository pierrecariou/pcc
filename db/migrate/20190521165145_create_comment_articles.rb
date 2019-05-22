class CreateCommentArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_articles do |t|
      t.text :text
      t.string :date
      t.date :precise_date
      t.integer :likes, default: 0
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
