class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :item_id
      t.string :full_name
      t.integer :phone_num
      t.text :address
      t.integer :total_price

      t.timestamps
    end
  end
end
