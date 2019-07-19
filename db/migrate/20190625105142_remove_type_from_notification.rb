class RemoveTypeFromNotification < ActiveRecord::Migration[5.2]
  def change
    remove_column :notifications, :type, :string
  end
end
