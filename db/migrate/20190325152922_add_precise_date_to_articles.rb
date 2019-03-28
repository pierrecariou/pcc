class AddPreciseDateToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :precise_date, :date
  end
end
