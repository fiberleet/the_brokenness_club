class AddCategoriesProfilesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :categories_profiles, :id => false do |t|
      t.integer :category_id
      t.integer :profile_id
    end
  end
 
  def self.down
    drop_table :categories_profiles
  end
end
