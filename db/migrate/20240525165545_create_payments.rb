class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.datetime :payment_date
      t.decimal :total
      t.decimal :discount, precision: 5, scale: 2
      t.decimal :after_discount
      t.references :payment_method, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
