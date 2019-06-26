class AddNotifTypeToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :notif_type, :string
  end
end
