json.extract! event_sign_in, :id, :event_email, :event_password, :event_date, :created_at, :updated_at
json.url event_sign_in_url(event_sign_in, format: :json)
