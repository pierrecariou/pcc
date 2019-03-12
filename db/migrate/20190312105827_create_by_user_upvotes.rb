class CreateByUserUpvotes < ActiveRecord::Migration[5.2]
  def change
    create_table :by_user_upvotes do |t|
      t.string :user_first_name
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
