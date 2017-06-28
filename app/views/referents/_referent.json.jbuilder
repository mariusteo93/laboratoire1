json.extract! referent, :id, :nom, :prenom, :titre, :tellCell, :tellBur, :fax, :courriel, :preference, :created_at, :updated_at
json.url referent_url(referent, format: :json)
