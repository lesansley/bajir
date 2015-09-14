class CreateSurveytemplates < ActiveRecord::Migration
  def change
    create_table :surveytemplates do |t|
      t.string :surveyName
      t.text :surveyDefinition

      t.timestamps null: false
    end
  end
end
