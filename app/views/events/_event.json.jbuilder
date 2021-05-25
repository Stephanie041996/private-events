json.extract! event, :id, :date, :title, :Location, :created_at, :updated_at
json.url event_url(event, format: :json)
