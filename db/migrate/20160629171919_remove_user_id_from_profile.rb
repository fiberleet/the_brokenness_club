class RemoveUserIdFromProfile < ActiveRecord::Migration
  def change
  	remove_column :profiles, :User_id
  	add_column :profiles, :user_id, :integer
  end
end
