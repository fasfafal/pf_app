json.extract! event, :id, :user_id, :title, :body, :avatar, :created_at, :updated_at
json.url event_url(event, format: :json)