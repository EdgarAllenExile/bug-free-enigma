class Ingredient < ApplicationRecord
    has_and_belongs_to_many :quantities, :optional => true
    has_and_belongs_to_many :recipes
end
