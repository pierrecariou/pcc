class RemoveFieldCategoryFromArticle < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :category, :string
  end
end
