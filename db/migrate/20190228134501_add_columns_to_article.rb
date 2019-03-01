class AddColumnsToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :image, :string
    add_column :articles, :title, :string
    add_column :articles, :source, :string
  end
end
