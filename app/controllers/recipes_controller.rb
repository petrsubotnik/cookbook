class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @food_categories = FoodCategory.all
  end

  def create
    @food_categories = FoodCategory.all
    @recipe = Recipe.new(clean_params)

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @recipe.image = req["public_id"]
    end

    if @recipe.save
      redirect_to new_ingredient_path(recipe_id: @recipe.id)
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    if params[:file].present?
       req = Cloudinary::Uploader.upload(params[:file])
       @recipe.image = req["public_id"]
     end

    if @recipe.update_attributes(clean_params)
      redirect_to new_ingredient_path(recipe_id: @recipe.id)
    else
      render :edit
    end
  end

  # def search
  #   redirect_to recipes_results_path(search: "#{params[:find]}")
  # end
  #
  # def results
  #   @search_result = Recipe.joins(:name).where("recipes.name ILIKE ?", "%#{params[:search]}%").distinct
  # end


  private

  def clean_params
    params.require(:recipe).permit(:name, :image, :food_category_id, :cooking_time, :preping_time, :servings)
  end
end
