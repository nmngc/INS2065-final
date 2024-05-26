class PaymentMethod < ApplicationRecord
    validates_presence_of :method_id, :method_name
    validates_uniqueness_of :method_id

    has_many :payments
end
