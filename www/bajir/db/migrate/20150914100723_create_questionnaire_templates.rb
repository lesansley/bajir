class CreateQuestionnaireTemplates < ActiveRecord::Migration
  def change
    create_table :questionnaire_templates do |t|
      t.string :questionnaireName
      t.text :questionnaireDefinition

      t.timestamps null: false
    end
  end
end
