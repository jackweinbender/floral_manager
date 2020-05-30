class Recipe
    include ActiveModel::AttributeMethods
    include ActiveModel::Model
    
    attr_accessor   :name,
                    :description,
                    :count
end
