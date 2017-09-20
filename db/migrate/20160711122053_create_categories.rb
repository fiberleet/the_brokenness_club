class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
	  t.references :profile, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
