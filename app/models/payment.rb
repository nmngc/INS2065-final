class Payment < ApplicationRecord
  validates_presence_of :payment_id, :payment_date, :total, :discount, :after_discount, :payment_method_id, :movie_id, :customer_id, :price
  validates_uniqueness_of :payment_id

  belongs_to :payment_method
  belongs_to :movie
  belongs_to :customer
end
