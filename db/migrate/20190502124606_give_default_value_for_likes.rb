class GiveDefaultValueForLikes < ActiveRecord::Migration[5.2]
  def change
    change_column :answers, :likes, :integer, default: 0
  end
end
