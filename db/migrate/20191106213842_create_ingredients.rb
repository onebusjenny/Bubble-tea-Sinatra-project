class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :bubble_tea_id
      

      t.timestamps null: false
    end
  end
end
