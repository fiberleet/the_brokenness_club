class AddLocationToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :profile_country, :string
    add_column :profiles, :profile_state, :string
    add_column :profiles, :profile_city, :string
  end
end
