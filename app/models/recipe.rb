class Recipe < ApplicationRecord
    has_many :recipe_line_items
end