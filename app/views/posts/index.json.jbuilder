json.array!(@posts) do |post|
  json.extract! post, :id, :message, :image, :audio, :video, :facebook, :twitter, :googleplus
  json.url post_url(post, format: :json)
end
