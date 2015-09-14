class RecreateQuestionsTable < ActiveRecord::Migration
  	def change
    	create_table :questions do |t|
     	 t.string :question
     	 t.string :answerParameters
     	 t.integer :maxValue
     	 t.integer :minValue
     	 t.integer :type
     	 t.references :surveytemplate, index: true, foreign_key: true

     	 t.timestamps null: false
  		end
  	end
end
