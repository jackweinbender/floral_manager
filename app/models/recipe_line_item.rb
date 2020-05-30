class RecipeLineItem
    include ActiveModel::AttributeMethods
    include ActiveModel::Model
    
    attr_accessor   :name,
                    :count,
                    :price

    def total_count(global_count)
        global_count * self.count
    end

    def total_price(global_count)
        global_count * self.price
    end
end
