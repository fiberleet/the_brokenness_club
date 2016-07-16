class CreateTableSubcategoriesProfiles < ActiveRecord::Migration
  def change
  	drop_table :categories_profiles
    create_table :subcategories_profiles, :id => false do |t|
      t.integer :subcategory_id
      t.integer :profile_id
    end
    add_index :subcategories_profiles, :subcategory_id
    add_index :subcategories_profiles, :profile_id
  end
end
