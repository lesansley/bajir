class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :tnumber
      t.date :procedureDate

      t.timestamps null: false
    end
  end
end
