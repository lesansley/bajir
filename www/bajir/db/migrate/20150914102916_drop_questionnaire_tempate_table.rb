class DropQuestionnaireTempateTable < ActiveRecord::Migration
  def change
  	drop_table :questionnaire_templates
  end
end
