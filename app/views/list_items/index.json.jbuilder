json.array!(@list_items) do |list_item|
  json.extract! list_item, :name, :description, :icon, :created_by, :list_id
  json.url list_item_url(list_item, format: :json)
end
