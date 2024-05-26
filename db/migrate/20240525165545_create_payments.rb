class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.datetime :payment_date
      t.decimal :total, precision: 10, scale: 2
      t.decimal :discount, precision: 10, scale: 2
      t.decimal :after_discount, precision: 10, scale: 2
      t.references :payment_method, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
