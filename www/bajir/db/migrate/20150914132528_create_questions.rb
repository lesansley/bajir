class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :questionText
      t.integer :optionKey
      t.string :optionValue
      t.references :questionlist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
