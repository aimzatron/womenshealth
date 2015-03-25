json.array!(@actions) do |action|
  json.extract! action, :id, :stage, :value
  json.url action_url(action, format: :json)
end
