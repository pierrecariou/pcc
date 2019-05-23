class AddOpenOrCloseToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :open_or_close, :boolean
  end
end
