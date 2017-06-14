json.extract! organisme, :id, :Nom, :Adresse, :Courriel, :Telephone, :Fax, :created_at, :updated_at
json.url organisme_url(organisme, format: :json)
