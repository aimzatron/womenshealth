json.array!(@options) do |option|
  json.extract! option, :id, :value
  json.url option_url(option, format: :json)
end
