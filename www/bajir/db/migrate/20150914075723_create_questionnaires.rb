class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.string :username
      t.string :type
      t.date :date
      t.text :score
      t.references :procedure, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
