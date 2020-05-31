class RecipeInstance < ApplicationRecord
  belongs_to :recipe
  belongs_to :project

  def name 
    self.recipe.name
  end
  def description 
    self.recipe.description
  end

end
