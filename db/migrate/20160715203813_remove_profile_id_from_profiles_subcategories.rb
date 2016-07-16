class RemoveProfileIdFromProfilesSubcategories < ActiveRecord::Migration
  def change
  	remove_column :profiles_subcategories, :profile_id
  end
end
