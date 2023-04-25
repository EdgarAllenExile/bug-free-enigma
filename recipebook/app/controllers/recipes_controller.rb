class RecipesController < ApplicationController
  before_action :check_for_login

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create recipe_params
    @current_user.recipes << recipe
    # alternatively: # @current_user.recipes.create recipe_params
    redirect_to root_path # TODO: redirect somewhere better
  end

  def show
    @recipe = Recipe.find params[:id]
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title)
  end
end