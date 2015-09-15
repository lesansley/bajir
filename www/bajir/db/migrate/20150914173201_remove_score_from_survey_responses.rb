class RemoveScoreFromSurveyResponses < ActiveRecord::Migration
  def change
    remove_column :surveyresponses, :score, :text
  end
end
