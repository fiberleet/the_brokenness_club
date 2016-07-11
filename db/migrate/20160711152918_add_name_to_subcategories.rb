class AddNameToSubcategories < ActiveRecord::Migration
  def change
    add_column :subcategories, :name, :string
  end
end
