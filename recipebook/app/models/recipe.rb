class Recipe < ApplicationRecord
    belongs_to :user, optional :true
    has_many :quantities
    has_many :ingredients, :through => :quantities
end
