class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @recipes = @recipes.page(params[:page]).per(1)

  end

  def show
  end

  def edit
  end

  def destroy
  end
end
