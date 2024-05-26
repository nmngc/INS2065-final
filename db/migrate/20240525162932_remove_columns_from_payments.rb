class RemoveColumnsFromPayments < ActiveRecord::Migration[7.0]
  def change
    remove_column :payments, :payment_methods_id, :bigint
    remove_column :payments, :movie_id, :bigint
    remove_column :payments, :customer_id, :bigint
  end
end