class Ingredient < ApplicationRecord
    belongs_to :quantity
    belongs_to :recipe
end
