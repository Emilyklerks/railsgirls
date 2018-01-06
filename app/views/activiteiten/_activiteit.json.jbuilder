json.extract! activiteit, :id, :naam, :beschrijving, :afbeelding, :created_at, :updated_at
json.url activiteit_url(activiteit, format: :json)
