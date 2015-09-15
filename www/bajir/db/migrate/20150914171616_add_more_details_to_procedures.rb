class AddMoreDetailsToProcedures < ActiveRecord::Migration
  def change
    add_reference :procedures, :operation, polymorphic: false, index: true 
  end
end
