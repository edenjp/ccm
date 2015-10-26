json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :brand, :model, :color, :type, :user_id
  json.url vehicle_url(vehicle, format: :json)
end
