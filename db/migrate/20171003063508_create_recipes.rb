class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image
      t.integer :food_category_id
      t.integer :cooking_time
      t.integer :preping_time
      t.integer :servings

      t.timestamps
    end
  end
end
