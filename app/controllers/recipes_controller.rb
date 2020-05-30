class RecipesController < ApplicationController
    def index()
        @recipes = []
        data = {
            name: 'Event Name',
            recipes: [
                {
                    name: "Large Centerpiece",
                    count: 4,
                    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra nulla eu erat hendrerit, mattis gravida lorem blandit. Donec rhoncus, diam eget accumsan maximus, turpis metus eleifend dui, et bibendum tortor ex nec enim.",
                },
                {
                    name: "Small Centerpiece",
                    count: 3,
                    description: "Proin dignissim accumsan sem et ultricies.",
                },
                {
                    name: "Bridesmaids' Bouquet",
                    count: 5,
                    description: "Phasellus sit amet pharetra quam. Mauris viverra quam vitae libero finibus accumsan. ",
                },
                {
                    name: "Bridal Bouquet",
                    count: 1,
                    description: "Proin nec leo diam. In viverra, risus ac interdum mattis, odio turpis vestibulum nisi, nec maximus augue odio blandit sapien. Maecenas auctor quam non porttitor maximus. Vivamus et ipsum dui. In in purus pulvinar, euismod nulla eget, lacinia lacus. Suspendisse dictum vehicula ex a venenatis. Sed eget neque consectetur, molestie ipsum tincidunt, consequat nisl. Pellentesque ut metus dictum, sodales est sit amet, ornare eros.",
                }
            ]
        }
        for r in data[:recipes] do
            @recipes << Recipe.new(r)
        end

        @items_flowers = ["Rose", "Peony", "Stock", "Snapdragon", "Smilax", "Verbina", "Hellabor"].map { |i|
            RecipeLineItem.new({
                name: i,
                count: 2,
                price: 12.34
            })
        }
        @items_hardgoods = ["Vase", "Foam", "Frog"].map { |i|
            RecipeLineItem.new({
                name: i,
                count: 2,
                price: 12.34
            })
        }
        @items_others = [].map { |i|
            RecipeLineItem.new({
                name: i,
                count: 2,
                price: 12.34
            })
        }
    end
end
