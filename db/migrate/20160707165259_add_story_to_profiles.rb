class AddStoryToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :story, :text
  end
end
