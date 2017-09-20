class AddCategoryIdToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :category_id, :integer
  end
end
