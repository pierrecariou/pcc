class RemovePhotoUrlFromArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :photo_url, :string
  end
end
