class AddIndexToCategoriesProfiles < ActiveRecord::Migration
  def change
    add_index :categories_profiles, :category_id
    add_index :categories_profiles, :profile_id
  end
end
