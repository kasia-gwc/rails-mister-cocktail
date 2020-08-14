class DosesController < ApplicationController
  before_action :find_cocktail, only: [:new, :create]

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    # @dose.ingredient = Ingredient.find(params[:dose][:ingredient]) unless params[:dose][:ingredient].blank?
    if @dose.save!
      redirect_to cocktail_path(@cocktail), notice: "Dose created!🎊"
    else
      render "cocktails/show"
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail), notice: "Dose destroyed"
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
