class RemoveSubcategoryIdFromProfilesSubcategories < ActiveRecord::Migration
  def change
  	drop_table :profiles_subcategories
  end
end
