class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :text
      t.string :date
      t.date :precise_date
      t.integer :likes
      t.references :sub_comment, foreign_key: true

      t.timestamps
    end
  end
end
