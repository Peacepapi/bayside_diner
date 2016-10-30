class ChangeFoodItemSectionColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :food_items, :section, 'integer USING CAST(section AS integer)'
  end
end
