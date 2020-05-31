class RecipeInstanceReflex < ApplicationReflex
    def update_count
        recipe = RecipeInstance.find(element.dataset[:id])
        recipe.update({count: element[:value]})
    end
end