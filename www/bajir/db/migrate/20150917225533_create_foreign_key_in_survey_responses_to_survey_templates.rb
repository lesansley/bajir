class CreateForeignKeyInSurveyResponsesToSurveyTemplates < ActiveRecord::Migration
  def change
    add_reference :surveyresponses, :surveytemplates, index: true, foreign_key: true
  end
end
