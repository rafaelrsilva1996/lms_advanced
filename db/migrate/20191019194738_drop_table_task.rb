class DropTableTask < ActiveRecord::Migration[5.0]
  def change
    drop_table :tasks
  end
end
