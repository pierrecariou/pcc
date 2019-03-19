class CreateSubComments < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_comments do |t|
      t.string :title
      t.text :text
      t.text :source
      t.integer :stars
      t.string :date
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
