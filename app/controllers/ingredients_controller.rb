class IngredientsController < ApplicationController

  def new
    @ingredients = Ingredient.new
  end

  def create
    params[:ingredients].each do |i|
      if i[:quantity].present? && i[:name].present?
        food_item = FoodItem.find_or_create_by(name: i[:name])
        @recipe = Recipe.find(params[:recipe_id])
        @ingredients = Ingredient.create(quantity: i[:quantity], food_item_id: food_item.id, recipe_id: @recipe.id)
      end
    end
    if @ingredients.save
      redirect_to new_direction_path(recipe_id: @recipe.id)
    else
      render :new
    end
  end



  private

  def clean_params
    params.require(:ingredients).permit(:quantity, :food_item_id, :recipe_id)
  end
end
