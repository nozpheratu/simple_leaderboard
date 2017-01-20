json.extract! result, :id, :name, :score, :email, :created_at, :updated_at
json.url result_url(result, format: :json)