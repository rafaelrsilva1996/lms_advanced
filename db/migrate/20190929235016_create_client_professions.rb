class CreateClientProfessions < ActiveRecord::Migration[5.0]
  def change
    create_table :client_professions do |t|
      t.references :client, foreign_key: true
      t.references :profession, foreign_key: true

      t.timestamps
    end
  end
end
