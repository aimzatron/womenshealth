json.array!(@contents) do |content|
  json.extract! content, :id, :type, :stage, :value
  json.url content_url(content, format: :json)
end
