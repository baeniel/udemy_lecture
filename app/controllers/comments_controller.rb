class CommentsController < ApplicationController

  def create

    @recipe = Recipe.find(params[:recipe_id])
    comment = @recipe.comments.new(comment_params)
    comment.chef = @recipe.chef
    if comment.save
      redirect_to @recipe
    else
      render 'recipes/show'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
