class Recipe < ApplicationRecord
    belongs_to :user, :optional => true
    has_and_belongs_to_many :ingredients
    has_and_belongs_to_many :quantities
    has_and_belongs_to_many :steps
end
