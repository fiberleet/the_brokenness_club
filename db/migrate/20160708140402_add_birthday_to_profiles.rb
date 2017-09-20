class AddBirthdayToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :birthday, :date
  end
end
