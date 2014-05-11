json.array!(@socialmedia) do |socialmedium|
  json.extract! socialmedium, :id, :name, :username, :password
  json.url socialmedium_url(socialmedium, format: :json)
end
