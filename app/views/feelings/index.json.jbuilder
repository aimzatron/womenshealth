json.array!(@feelings) do |feeling|
  json.extract! feeling, :id, :options, :key
  json.url feeling_url(feeling, format: :json)
end
