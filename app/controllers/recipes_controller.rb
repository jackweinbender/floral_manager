class RecipesController < ApplicationController
    def index()
        @recipes = RecipeInstance.all.order(:created_at)
    end
end
