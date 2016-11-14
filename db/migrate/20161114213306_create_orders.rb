class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :phone
      t.text :address
      t.string :order_details

      t.timestamps
    end
  end
end
