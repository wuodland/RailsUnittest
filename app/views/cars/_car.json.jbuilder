json.extract! car, :id, :queue_id, :user_id, :available_seats, :car_number, :status, :created_at, :updated_at
json.url car_url(car, format: :json)
