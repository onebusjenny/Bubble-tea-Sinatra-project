class CreateBubbleTeas < ActiveRecord::Migration
  def change
    create_table :bubble_teas do |t|
      t.string :name
      t.string :flavor
      t.integer :user_id
      

      t.timestamps null: false
    end
  end
end
