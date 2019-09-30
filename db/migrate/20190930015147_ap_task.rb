class ApTask < ActiveRecord::Migration[5.0]
  def change
    add_reference :tasks, :administrative_processes, foreign_key: true
  end
end
