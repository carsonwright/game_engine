json.array!(@cards) do |card|
  json.extract! card, :id, :name, :content, :deck_id, :user_id
  json.url card_url(card, format: :json)
end
