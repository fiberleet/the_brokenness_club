class AddSubcateforyIdToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :subcategory_id, :integer
  end
end
