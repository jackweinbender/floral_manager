class RecipeLineItemReflex < ApplicationReflex
    def update_count
        line_item = RecipeLineItem.find(element.dataset[:id])
        line_item.update({count: element[:value]})
    end
end