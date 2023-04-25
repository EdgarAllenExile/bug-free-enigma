class QuantitiesController < ApplicationController
    private

    def quantity_params
        params.require(:quantity).permit(ingredient_ids: [])
    end
end
