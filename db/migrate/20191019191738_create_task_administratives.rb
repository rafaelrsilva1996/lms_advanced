class CreateTaskAdministratives < ActiveRecord::Migration[5.0]
  def change
    create_table :task_administratives do |t|
      t.date :delivery_date
      t.text :task_description
      t.references :administrative_process, foreign_key: true

      t.timestamps
    end
  end
end
