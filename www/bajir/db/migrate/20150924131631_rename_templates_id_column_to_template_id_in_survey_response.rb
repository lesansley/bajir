class RenameTemplatesIdColumnToTemplateIdInSurveyResponse < ActiveRecord::Migration
  def change
    rename_column :surveyresponses, :surveytemplates_id, :surveytemplate_id
  end
end
