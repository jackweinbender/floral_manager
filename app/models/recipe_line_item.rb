class RecipeLineItem < ApplicationRecord
  belongs_to :recipe

  def total_count(global_count)
      global_count * self.count
  end

  def total_price(global_count)
      global_count * self.price
  end
end
