json.extract! bike, :id, :bike_image, :year, :make, :model, :size, :miles, :hours, :created_at, :updated_at
json.url bike_url(bike, format: :json)
