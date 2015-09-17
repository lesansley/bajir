class AddColumnSurveyToSurveyResponses < ActiveRecord::Migration
  def change
  	add_column :surveyresponses, :survey, :text
  end
end
