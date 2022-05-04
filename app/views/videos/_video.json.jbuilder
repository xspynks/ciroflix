json.extract! video, :id, :name, :url, :description, :category_id, :created_at, :updated_at
json.url video_url(video, format: :json)
