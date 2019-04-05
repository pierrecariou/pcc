class AddColumnPreciseDateToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :precise_date, :date
  end
end
