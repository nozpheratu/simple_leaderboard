json.extract! entry, :id, :name, :score, :email, :created_at, :updated_at
json.url entry_url(entry, format: :json)