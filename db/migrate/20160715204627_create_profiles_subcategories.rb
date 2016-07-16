class CreateProfilesSubcategories < ActiveRecord::Migration
  def change
    create_table :profiles_subcategories do |t|
      t.references :profile, index: true, foreign_key: true
      t.references :subcategory, index: true, foreign_key: true
    end
  end
end
