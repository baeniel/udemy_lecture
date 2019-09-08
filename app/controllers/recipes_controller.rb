class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @recipes = @recipes.page(params[:page]).per(5)
  end

  def show
    @recipe = Recipe.find params[:id]
    @comment = Comment.new
    @comments = @recipe.comments
  end

  def edit
  end

  def destroy
  end

  def new
  end

  def create
    recipe = Recipe.new(recipe_params)
    recipe.save
    redirect_to root_path
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, ingredient_ids: [])
  end
end
