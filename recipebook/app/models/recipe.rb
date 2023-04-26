class Recipe < ApplicationRecord
    belongs_to :user, :optional => true
    has_and_belongs_to_many :ingredients
    has_and_belongs_to_many :quantities
    has_and_belongs_to_many :steps
    accepts_nested_attributes_for :quantities, allow_destroy: true
    accepts_nested_attributes_for :ingredients, allow_destroy: true
    accepts_nested_attributes_for :steps, allow_destroy: true
    end
