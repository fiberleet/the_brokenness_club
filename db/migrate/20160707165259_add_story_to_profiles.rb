class AddStoryToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :story, :text
  end
end
