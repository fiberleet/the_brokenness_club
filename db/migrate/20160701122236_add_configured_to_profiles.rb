class AddConfiguredToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :configured, :boolean
  end
end
