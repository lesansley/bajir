class AddQuestionForeignKeyToSurveyResponses < ActiveRecord::Migration
  def change
  	add_reference :surveyresponses, :questions, index: true, foreign_key: true
  end
end
