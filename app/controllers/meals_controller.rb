class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      # TODO: get Flash messages working (turbo now?)
      redirect_to meals_path, notice: "Meal successfully created!"
    else
      render :new
    end
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    # TODO: this will only be possible by Meal creator or group admin
    @meal = Meal.find(params[:id])
    if @meal.update(meal_params)
      # TODO: get Flash messages working (turbo now?)
      redirect_to meal_path(@meal), alert: "Meal successfully updated!"
    else
      render :edit
    end
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    # look: status: :see_other is a Rails 7 feature (https://guides.rubyonrails.org/getting_started.html#deleting-an-article)
    redirect_to meals_url, status: :see_other
  end

  private
  
  def meal_params
    params.require(:meal).
      permit(:name, :description, :link)
  end

end
