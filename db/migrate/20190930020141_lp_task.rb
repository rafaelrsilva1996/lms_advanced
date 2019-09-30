class LpTask < ActiveRecord::Migration[5.0]
  def change
    add_reference :tasks, :labor_processes, foreign_key: true
  end
end
