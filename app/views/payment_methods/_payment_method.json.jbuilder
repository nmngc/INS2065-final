json.extract! payment_method, :id, :method_id, :method_name, :created_at, :updated_at
json.url payment_method_url(payment_method, format: :json)
