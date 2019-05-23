class AddStateToSubComments < ActiveRecord::Migration[5.2]
  def change
    add_column :sub_comments, :state, :string, default: "neutre"
  end
end
