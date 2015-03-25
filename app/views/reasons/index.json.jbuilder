json.array!(@reasons) do |reason|
  json.extract! reason, :id, :stage, :value
  json.url reason_url(reason, format: :json)
end
