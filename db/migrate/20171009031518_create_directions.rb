class CreateDirections < ActiveRecord::Migration[5.0]
  def change
    create_table :directions do |t|
      t.integer :step
      t.integer :recipe_id
      t.string :instruction

      t.timestamps
    end
  end
end
