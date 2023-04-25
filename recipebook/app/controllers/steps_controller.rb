class StepsController < ApplicationController
    private

    def step_params
        params.require(:step).permit(recipe_ids: [], :process, :step_no)
    end
end
