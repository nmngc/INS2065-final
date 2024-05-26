class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :customer_id
      t.string :customer_name
      t.string :phone
      t.string :mobile_card
      t.integer :reward_point
      t.date :birth_date
      t.string :customer_type

      t.timestamps
    end
  end
end
