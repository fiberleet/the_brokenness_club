class AddSubcateforyIdToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :subcategory_id, :integer
  end
end
