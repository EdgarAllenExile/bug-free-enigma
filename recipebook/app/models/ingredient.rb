class Ingredient < ApplicationRecord
    has_many :quantities
    has_and_belongs_to_many :recipes
end
