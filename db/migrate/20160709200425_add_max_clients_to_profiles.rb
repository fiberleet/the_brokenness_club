class AddMaxClientsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :max_clients, :integer
  end
end
