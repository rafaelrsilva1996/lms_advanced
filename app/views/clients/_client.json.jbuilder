json.extract! client, :id, :name, :age, :email, :cep, :uf, :city, :neighborhood, :address, :number, :father, :mother, :marital_status, :naturalness, :uf_naturalness, :cpf, :issuing_organ, :document_type, :contact, :scrap_contact, :relationship1, :relationship2, :observation, :status, :created_at, :updated_at
json.url client_url(client, format: :json)
