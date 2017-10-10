class DirectionsController < ApplicationController

  def new
    @direction = Direction.new
  end

  def create
    params[:directions].each do |d|
      if d[:step].present? && d[:instruction].present?
        @directions = Direction.create(step: d[:step], instruction: d[:instruction], recipe_id: params[:recipe_id]) # matching update of data with array within array
      end
    end
    if @directions.save
      redirect_to recipe_path(id: params[:recipe_id])
    else
      render :new
    end
  end


  private

  def clean_params
    params.require(:directions).permit(:step, :recipe_id, :instruction)
  end


end
