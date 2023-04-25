class IngredientsController < ApplicationController
    private

    def ingredient_params
        params.require(:ingredient).permit(recipe_ids: [])
    end
end
