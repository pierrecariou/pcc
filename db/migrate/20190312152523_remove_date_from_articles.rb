class RemoveDateFromArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :date, :date
  end
end
