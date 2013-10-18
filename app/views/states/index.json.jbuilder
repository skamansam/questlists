json.array!(@states) do |state|
  json.extract! state, :name, :description, :type
  json.url state_url(state, format: :json)
end
