class AddFoodItemIdToOrderDetail < ActiveRecord::Migration[5.0]
  def change
    add_column :order_details, :food_item_id, :integer
  end
end
