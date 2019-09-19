class CreateAdministrativeProcesses < ActiveRecord::Migration[5.0]
  def change
    create_table :administrative_processes do |t|
      t.integer :benefit_type
      t.string :der
      t.integer :age
      t.string :contribution_time
      t.text :movements
      t.boolean :status

      t.timestamps
    end
  end
end
