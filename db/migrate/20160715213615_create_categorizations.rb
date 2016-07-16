class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations, :id => false do |t|
      t.references :subcategory, index: true, foreign_key: true
      t.references :profile, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
