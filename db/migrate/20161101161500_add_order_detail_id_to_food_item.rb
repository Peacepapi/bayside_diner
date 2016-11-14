class AddOrderDetailIdToFoodItem < ActiveRecord::Migration[5.0]
  def change
    add_column :food_items, :order_detail_id, :integer
  end
end
