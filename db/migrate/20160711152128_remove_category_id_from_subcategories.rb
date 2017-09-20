class RemoveCategoryIdFromSubcategories < ActiveRecord::Migration[5.1]
  def change
  	remove_column :subcategories, :category_id
  end
end
