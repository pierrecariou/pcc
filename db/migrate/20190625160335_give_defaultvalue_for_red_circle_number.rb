class GiveDefaultvalueForRedCircleNumber < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :red_circle_number, :integer, default: 0
  end
end
