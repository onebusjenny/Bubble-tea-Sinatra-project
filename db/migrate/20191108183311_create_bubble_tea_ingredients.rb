class CreateBubbleTeaIngredients < ActiveRecord::Migration
  def change
    create_table :bubble_tea_ingredients do |t|
      t.integer :bubble_tea_id
      t.integer :ingredient_id

      t.timestamps null: false
    end
  end
end
