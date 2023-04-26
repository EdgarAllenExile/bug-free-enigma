class RecipesController < ApplicationController
  before_action :check_for_login

  def index
    @recipes = Recipe.all
  end

  def filter
    if params[:search_by_category].blank? && params[:search_by_cusine].blank? && params[:search_by_dietary].blank?
      redirect_to recipes_path

    else
      @parameter_category = params[:search_by_category].downcase
      @parameter_cusine = params[:search_by_cusine].downcase
      @parameter_dietary = params[:search_by_dietary].downcase 
      @results = Recipe.all.where(category: @parameter_category, cusine: @parameter_cusine, dietary: @parameter_dietary)
    end
  end

  def search
    if params[:search].blank?
      redirect_to root_path and return
    else
      @parameter = params[:search].downcase
      @results = Recipe.all.where("lower(title) LIKE :search", search: "%#{@parameter}%")
    end
  end

  def new
    @recipe = Recipe.new
    1.times { @recipe.steps.build } 
    1.times { @recipe.quantities.build } 
    1.times { @recipe.ingredients.build } 
  end

  def create
    recipe = Recipe.create recipe_params
    @current_user.recipes << recipe
    # alternatively: # @current_user.recipes.create recipe_params
    redirect_to recipe # TODO: redirect somewhere better
  end

  def edit
    @recipe = Recipe.find params[:id]
  end

  def update
    recipe = Recipe.find params[:id]
    recipe.update recipe_params
    redirect_to recipe
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
    params.require(:recipe).permit(:title, :id, :search, :category, :cusine, :dietary, :cook_time, :difficulty, :serves, :image, quantities_attributes: [:id, :amount, :unit], ingredients_attributes: [:id, :title, :category], steps_attributes: [:id, :process])
  end
end
