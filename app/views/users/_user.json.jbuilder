json.extract! user, :id, :email, :phone, :city, :first_name, :last_name, :age, :created_at, :updated_at
json.url user_url(user, format: :json)
