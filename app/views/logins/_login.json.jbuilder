json.extract! login, :id, :email, :password, :new_riders_id, :created_at, :updated_at
json.url login_url(login, format: :json)
