class CreatePaymentMethods < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_methods do |t|
      t.string :method_id
      t.string :method_name

      t.timestamps
    end
  end
end
