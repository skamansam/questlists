json.array!(@lists) do |list|
  json.extract! list, :name, :description, :icon, :created_by
  json.url list_url(list, format: :json)
end
