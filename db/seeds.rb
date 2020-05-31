RecipeLineItem.delete_all
RecipeInstance.delete_all
Project.delete_all
Recipe.delete_all

project = Project.create({
    title: "New Project",
    description: "Project Description"
})


recipes = [
    {
        name: "Large Centerpiece",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra nulla eu erat hendrerit, mattis gravida lorem blandit. Donec rhoncus, diam eget accumsan maximus, turpis metus eleifend dui, et bibendum tortor ex nec enim.",
    },
    {
        name: "Small Centerpiece",
        description: "Proin dignissim accumsan sem et ultricies.",
    },
    {
        name: "Bridesmaids' Bouquet",
        description: "Phasellus sit amet pharetra quam. Mauris viverra quam vitae libero finibus accumsan. ",
    },
    {
        name: "Bridal Bouquet",
        description: "Proin nec leo diam. In viverra, risus ac interdum mattis, odio turpis vestibulum nisi, nec maximus augue odio blandit sapien. Maecenas auctor quam non porttitor maximus. Vivamus et ipsum dui. In in purus pulvinar, euismod nulla eget, lacinia lacus. Suspendisse dictum vehicula ex a venenatis. Sed eget neque consectetur, molestie ipsum tincidunt, consequat nisl. Pellentesque ut metus dictum, sodales est sit amet, ornare eros.",
    }
]
for r in recipes do
    res = Recipe.create(r)
    resInst = RecipeInstance.create({ project_id: project.id, recipe_id: res.id })

    ["Rose", "Peony", "Stock", "Snapdragon", "Smilax", "Verbina", "Hellabor"].each do |i|
        RecipeLineItem.create({
            recipe_id: res.id,
            count: 2,
            price: 12.34
        })
    end
end





# @items_hardgoods = ["Vase", "Foam", "Frog"].map { |i|
#     RecipeLineItem.new({
#         name: i,
#         count: 2,
#         price: 12.34
#     })
# }
# @items_others = [].map { |i|
#     RecipeLineItem.new({
#         name: i,
#         count: 2,
#         price: 12.34
#     })
# }