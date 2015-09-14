class CreateQuestionLists < ActiveRecord::Migration
  def change
    create_table :question_lists do |t|
      t.references :surveytemplate, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
