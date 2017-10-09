class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @food_categories = FoodCategory.all
  end

  def create
    @food_categories = FoodCategory.all
    @recipe = Recipe.new(clean_params)

    if @recipe.save
      redirect_to new_ingredient_path(recipe_id: @recipe.id)
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def clean_params
    params.require(:recipe).permit(:name, :image, :food_category_id, :cooking_time, :preping_time, :servings)
  end
end
