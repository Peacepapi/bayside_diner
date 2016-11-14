class RemoveOrderDetailIdFromFoodItem < ActiveRecord::Migration[5.0]
  def change
    remove_column :food_items, :order_detail_id
  end
end
