class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
  end

  def recipe_params
  params.require(:person).permit(
  :name,
  addresses_attributes: [
    :street_address_1,
    :street_address_2,
    :city,
    :state,
    :zipcode,
    :address_type
  ]
)
end
end
