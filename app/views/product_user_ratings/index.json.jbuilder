json.array!(@product_user_ratings) do |product_user_rating|
  json.extract! product_user_rating, :id
  json.url product_user_rating_url(product_user_rating, format: :json)
end
