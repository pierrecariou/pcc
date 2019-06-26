class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :type
      t.boolean :status_active, default: true
      t.string :message
      t.integer :id_notif_type_concerned
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
