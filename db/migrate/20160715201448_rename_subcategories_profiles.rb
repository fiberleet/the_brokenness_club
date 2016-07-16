class RenameSubcategoriesProfiles < ActiveRecord::Migration
  def change
  	rename_table :profile_subcategories, :profiles_subcategories
  end
end
