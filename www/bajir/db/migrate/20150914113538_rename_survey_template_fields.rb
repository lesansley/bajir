class RenameSurveyTemplateFields < ActiveRecord::Migration
  def change
  	rename_column :surveytemplates, :surveyName, :name
  	rename_column :surveytemplates, :surveyDefinition, :definition
  end
end
