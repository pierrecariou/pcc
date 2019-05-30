class AddPhotoUrlToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :photo_url, :string
  end
end
