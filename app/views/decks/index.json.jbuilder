json.array!(@decks) do |deck|
  json.extract! deck, :id, :name, :theme_id, :user_id
  json.url deck_url(deck, format: :json)
end
