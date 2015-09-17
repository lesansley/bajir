class MakeNameInSurveyTemplatesUnique < ActiveRecord::Migration
  def change
  	add_index  :surveytemplates, :name, :unique => true
  end
end
