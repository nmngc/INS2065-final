class Customer < ApplicationRecord
    validates_presence_of :customer_id, :customer_name, :phone, :reward_point, :birth_date, :customer_type
    validates_uniqueness_of :customer_id, :phone

end
