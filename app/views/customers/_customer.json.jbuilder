json.extract! customer, :id, :customer_id, :customer_name, :phone, :mobile_card, :reward_point, :birth_date, :customer_type, :created_at, :updated_at
json.url customer_url(customer, format: :json)
