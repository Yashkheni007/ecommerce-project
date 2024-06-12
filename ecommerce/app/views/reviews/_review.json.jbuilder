json.extract! review, :id, :title, :content, :image, :createdAt, :created_at, :updated_at
json.url review_url(review, format: :json)
