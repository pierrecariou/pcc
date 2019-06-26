class AddRedCircleNumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :red_circle_number, :integer
  end
end
