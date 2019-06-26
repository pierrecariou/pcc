class AddNotifUserIdToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :notif_user_id, :integer
  end
end
