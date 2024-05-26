json.extract! payment, :id, :payment_date, :total, :discount, :after_discount, :payment_method_id, :movie_id, :customer_id, :price, :created_at, :updated_at
json.url payment_url(payment, format: :json)
