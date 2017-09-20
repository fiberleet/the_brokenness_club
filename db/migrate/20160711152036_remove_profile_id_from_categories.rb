class RemoveProfileIdFromCategories < ActiveRecord::Migration[5.1]
  def change
  	remove_column :categories, :profile_id
  end
end
