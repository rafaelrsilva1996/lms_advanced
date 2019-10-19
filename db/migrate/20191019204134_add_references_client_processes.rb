class AddReferencesClientProcesses < ActiveRecord::Migration[5.0]
  def change
    add_reference :administrative_processes, :client, foreign_key: true
    add_reference :labor_processes, :client, foreign_key: true
  end
end
