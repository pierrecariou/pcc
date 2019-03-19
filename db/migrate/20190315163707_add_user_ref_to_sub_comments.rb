class AddUserRefToSubComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :sub_comments, :user, foreign_key: true
  end
end
