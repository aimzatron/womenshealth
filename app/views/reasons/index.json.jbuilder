json.array!(@reasons) do |reason|
  json.extract! reason, :id, :options, :key
  json.url reason_url(reason, format: :json)
end
