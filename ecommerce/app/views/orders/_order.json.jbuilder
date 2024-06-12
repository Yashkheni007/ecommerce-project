json.extract! order, :id, :orderDate, :address, :city, :state, :contry, :paymentMethod, :status, :created_at, :updated_at
json.url order_url(order, format: :json)
