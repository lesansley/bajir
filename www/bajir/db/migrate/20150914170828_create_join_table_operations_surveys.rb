class CreateJoinTableOperationsSurveys < ActiveRecord::Migration
  def change
    create_join_table :operations, :surveytemplates do |t|
      # t.index [:operation_id, :surveytemplate_id]
      # t.index [:surveytemplate_id, :operation_id]
    end
  end
end
