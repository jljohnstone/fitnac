json.extract! workout, :id, :starts_at, :location_id, :created_at, :updated_at
json.url workout_url(workout, format: :json)
