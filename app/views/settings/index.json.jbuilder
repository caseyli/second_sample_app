json.array!(@settings) do |setting|
  json.extract! setting, :key, :value
  json.url setting_url(setting, format: :json)
end
