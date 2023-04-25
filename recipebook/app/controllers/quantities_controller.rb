class QuantitiesController < ApplicationController
    def index
        @quantities = Quantity.all
      end
    
      def new
        @quantity = Quantity.new
      end
    
      def create
      end
    
      def show
        @quantity = Quantity.find params[:id]
      end

    private

    def quantity_params
        params.require(:quantity).permit(recipe_ids: [])
    end
end

#     private

#     def quantity_params
#         params.require(:quantity).permit(ingredient_ids: [])
#     end
# end
