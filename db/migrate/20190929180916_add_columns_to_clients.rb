class AddColumnsToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :cep, :integer
    add_column :clients, :uf, :string
    add_column :clients, :city, :string
    add_column :clients, :neighborhood, :string
    add_column :clients, :address, :string
    add_column :clients, :number, :integer
    add_column :clients, :father, :string
    add_column :clients, :mother, :string
    add_column :clients, :marital_status, :string
    add_column :clients, :naturalness, :string
    add_column :clients, :uf_naturalness, :string
    add_column :clients, :cpf, :integer
    add_column :clients, :issuing_organ, :string
    add_column :clients, :document_type, :string
    add_column :clients, :contact, :integer
    add_column :clients, :scrap_contact, :integer
    add_column :clients, :relationship1, :integer
    add_column :clients, :relationship2, :integer
    add_column :clients, :observation, :string
  end
end
