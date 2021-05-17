json.extract! image, :id, :url_name, :title, :caption, :price, :human_type, :popular, :arrival, :saved_to_list, :created_at, :updated_at
json.url image_url(image, format: :json)
