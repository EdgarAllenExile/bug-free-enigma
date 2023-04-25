class IngredientsController < ApplicationController
    def index
        @ingredients = Ingredient.all
      end
    
      def new
        @ingredient = Ingredient.new
      end
    
      def create
      end
    
      def show
        @ingredient = Ingredient.find params[:id]
      end

    private

    def ingredient_params
        params.require(:ingredient).permit(:recipe_ids=> [], :quantity_ids=> [], :title, :category, ingredients_attributes: [:id, :title, :category])
    end
end