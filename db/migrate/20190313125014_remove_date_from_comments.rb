class RemoveDateFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :date, :date
  end
end
