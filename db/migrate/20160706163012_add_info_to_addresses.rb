class AddInfoToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :street_address, :string
    add_column :addresses, :apt_suite_building, :string
    add_column :addresses, :city, :string
    add_column :addresses, :state, :string
    add_column :addresses, :zip, :string
    add_column :addresses, :addressable_id, :integer
    add_index :addresses, :addressable_id
    add_column :addresses, :addressable_type, :string
    add_index :addresses, :addressable_type
  end
end
