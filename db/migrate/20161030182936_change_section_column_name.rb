class ChangeSectionColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :food_items, :section, :section_id
  end
end
