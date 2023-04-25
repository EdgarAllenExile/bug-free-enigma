class RecipesController < ApplicationController
  before_action :check_for_login

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times { @recipe.steps.build } 
    1.times { @recipe.quantities.build } 
    1.times { @recipe.ingredients.build } 
  end

  def create
    recipe = Recipe.create recipe_params
    @current_user.recipes << recipe
    # alternatively: # @current_user.recipes.create recipe_params
    redirect_to recipe # TODO: redirect somewhere better
  end

  def show
    @recipe = Recipe.find params[:id]
  end

  def destroy
    recipe = Recipe.find params[:id]
    recipe.destroy
    redirect_to root_path
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :category, :intensity, :serves, :image, quantities_attributes: [:id, :amount, :unit], steps_attributes: [:id, :process,])
  end
end