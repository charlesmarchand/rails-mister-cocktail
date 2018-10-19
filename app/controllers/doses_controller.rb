class DosesController < ApplicationController
  def create
    @dose = Dose.new(review_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient_id])
    if @dose.save
      redirect_to cocktail_path(params[:cocktail_id])
    else
      render '../cocktails/show'
    end
  end

  private

  def review_params
    params.require(:dose).permit(:description)
  end
end
