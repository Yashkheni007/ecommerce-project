json.extract! product, :id, :description, :price, :image, :name, :size, :created_at, :updated_at
json.url product_url(product, format: :json)
