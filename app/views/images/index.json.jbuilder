json.array!(@images) do |image|
  json.extract! image, :created_by, :image, :name, :description
  json.url image_url(image, format: :json)
end
