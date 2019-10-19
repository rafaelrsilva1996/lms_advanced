class CreateTaskLabors < ActiveRecord::Migration[5.0]
  def change
    create_table :task_labors do |t|
      t.date :delivery_date
      t.text :task_description
      t.references :labor_process, foreign_key: true

      t.timestamps
    end
  end
end
