class GiveDefaultValueForStars < ActiveRecord::Migration[5.2]
  def change
    change_column :sub_comments, :stars, :integer, default: 0
  end
end
