class CreateLaborProcesses < ActiveRecord::Migration[5.0]
  def change
    create_table :labor_processes do |t|
      t.integer :process_category
      t.integer :process_number
      t.date :distribution_date
      t.string :stick
      t.string :court
      t.text :movements
      t.boolean :status

      t.timestamps
    end
  end
end
