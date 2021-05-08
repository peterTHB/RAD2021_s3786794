json.extract! image, :id, :url_name, :human_type, :popular, :new_arrival, :created_at, :updated_at
json.url image_url(image, format: :json)
