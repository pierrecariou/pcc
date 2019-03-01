class AddSiteDescriptionToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :site_description, :text
  end
end
