class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :category
      t.string :subcategory
      t.string :URL
      t.string :description
      t.integer :upvotes
      t.integer :fake_news
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
