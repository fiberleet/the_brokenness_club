class AddLocationToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :profile_country, :string
    add_column :profiles, :profile_state, :string
    add_column :profiles, :profile_city, :string
  end
end
