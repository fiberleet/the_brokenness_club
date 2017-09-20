class RemoveTimestampsFromCategorization < ActiveRecord::Migration[5.1]
  def change
    remove_column :categorizations, :created_at, :string
    remove_column :categorizations, :updated_at, :string
  end
end
