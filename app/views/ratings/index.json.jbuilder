json.array!(@ratings) do |rating|
  json.extract! rating, :id, :value, :image_id
  json.url rating_url(rating, format: :json)
end
