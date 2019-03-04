class GiveDefautvalueForUpvotes < ActiveRecord::Migration[5.2]
  def change
    change_column :articles, :upvotes, :integer, default: 0
  end
end
