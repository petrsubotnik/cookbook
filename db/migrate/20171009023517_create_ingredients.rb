class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.integer :food_item_id
      t.string :quantity

      t.timestamps
    end
  end
end
