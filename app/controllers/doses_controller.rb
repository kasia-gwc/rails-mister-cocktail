class DosesController < ApplicationController
  def new
    @dose = Dose.new()
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to @dose, notice: "Dose created!"
    else
      render :new
    end
  end

  def destroy
    @dose.destroy
    redirect_to @cocktail_url, notice: "Dose destroyed"
  end

  private

  def dose_params
    params.require(:dose).params(:ingredients)
end
