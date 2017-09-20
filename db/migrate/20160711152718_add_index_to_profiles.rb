class AddIndexToProfiles < ActiveRecord::Migration[5.1]
  def change
  	add_index :profiles, :category_id
  	add_index :profiles, :subcategory_id
  end
end
