json.extract! organisme_referant, :id, :nom, :noCivique, :rue, :ville, :province, :etat, :codePostal, :telephoneBureau, :telephoneTelecopie, :courriel, :siteWeb, :created_at, :updated_at
json.url organisme_referant_url(organisme_referant, format: :json)
