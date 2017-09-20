class AddConfiguredToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :configured, :boolean
  end
end
