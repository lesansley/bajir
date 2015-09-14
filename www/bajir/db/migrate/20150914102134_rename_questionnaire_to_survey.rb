class RenameQuestionnaireToSurvey < ActiveRecord::Migration
  def change
  	rename_table :questionnaires, :surveyresponses
  end
end
