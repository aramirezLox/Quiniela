json.extract! prediction, :id, :user_id, :bed, :match_id, :points, :created_at, :updated_at
json.url prediction_url(prediction, format: :json)
