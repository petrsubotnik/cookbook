class FoodCategoriesController < ApplicationController
  def index
    @food_categories = FoodCategory.all
  end

  def new
    @food_category = FoodCategory.new
  end

  def create
    @food_category = FoodCategory.new(clean_params)

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @food_category.image = req["public_id"]
    end

    if @food_category.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @food_category = FoodCategory.find(params[:id])
  end

  private

  def clean_params
    params.require(:food_category).permit(:name, :image)
  end
end
