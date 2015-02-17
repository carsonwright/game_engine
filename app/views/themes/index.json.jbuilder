json.array!(@themes) do |theme|
  json.extract! theme, :id, :name, :user_id, :styling
  json.url theme_url(theme, format: :json)
end
