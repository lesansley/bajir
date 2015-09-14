class RenameSurveyTemplateDefinition < ActiveRecord::Migration
  def change
  	rename_column :surveytemplates, :definition, :description
  end
end
