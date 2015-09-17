class AddValueToSurveyResponses < ActiveRecord::Migration
  def change
  	add_column :surveyresponses, :value, :text
  end
end
