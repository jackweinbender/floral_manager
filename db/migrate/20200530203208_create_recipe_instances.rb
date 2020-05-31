class CreateRecipeInstances < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_instances do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.integer :count, null: false, default: 0

      t.timestamps
    end
  end
end
