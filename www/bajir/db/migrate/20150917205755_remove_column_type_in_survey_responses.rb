class RemoveColumnTypeInSurveyResponses < ActiveRecord::Migration
  def change
  	remove_column :surveyresponses, :type
  end
end
