json.array!(@devises) do |devise|
  json.extract! devise, :id, :room_id, :address
  json.url devise_url(devise, format: :json)
end
