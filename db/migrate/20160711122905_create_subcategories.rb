class CreateSubcategories < ActiveRecord::Migration[5.1]
  def change
    create_table :subcategories do |t|
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
