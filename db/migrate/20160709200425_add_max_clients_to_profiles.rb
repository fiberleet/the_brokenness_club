class AddMaxClientsToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :max_clients, :integer
  end
end
