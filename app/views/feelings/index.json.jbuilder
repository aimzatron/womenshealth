json.array!(@feelings) do |feeling|
  json.extract! feeling, :id, :stage, :value
  json.url feeling_url(feeling, format: :json)
end
