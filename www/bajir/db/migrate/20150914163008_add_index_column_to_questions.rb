class AddIndexColumnToQuestions < ActiveRecord::Migration
  def change
  	add_column :questions, :order, :integer
  end
end
