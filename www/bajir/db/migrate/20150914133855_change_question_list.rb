class ChangeQuestionList < ActiveRecord::Migration
  def change
  	rename_table :question_lists, :questionlists
  end
end
