class MealsController < ApplicationController

  def new
    @meal = current_user.meals.bulid
  end

  def create
    meal = current_user.meals.build(meal_params)
    if meal.save
      flash[:notice] = "Successful!"
      redirect_to meals_path
    else
      flash[:alert] = "Warning!"
      redirect_to :back
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:weight, :ingestion)
  end
end
