json.array!(@user_states) do |user_state|
  json.extract! user_state, :state_for_type, :state_for_id
  json.url user_state_url(user_state, format: :json)
end
