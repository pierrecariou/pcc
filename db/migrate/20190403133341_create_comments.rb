class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :text
      t.text :source
      t.integer :upvotes, default: 0
      t.string :date
      t.date :precise_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
