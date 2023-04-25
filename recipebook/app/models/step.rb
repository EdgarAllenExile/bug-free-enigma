class Step < ApplicationRecord
    has_and_belongs_to_many :recipe, :optional => true
end