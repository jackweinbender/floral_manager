class CreateRecipeLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_line_items do |t|
      t.integer :count
      t.integer :price
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
