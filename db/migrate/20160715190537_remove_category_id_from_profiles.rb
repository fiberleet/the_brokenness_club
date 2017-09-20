class RemoveCategoryIdFromProfiles < ActiveRecord::Migration[5.1]
  def change
  	remove_column :profiles, :category_id
  	remove_column :profiles, :subcategory_id
  end
end
