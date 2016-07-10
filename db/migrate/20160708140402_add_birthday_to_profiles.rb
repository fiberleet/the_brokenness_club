class AddBirthdayToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :birthday, :date
  end
end
