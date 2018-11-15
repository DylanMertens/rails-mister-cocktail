class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktails.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(task_params)
    @cocktail.save
    redirect_to index_path(@cocktail)
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(task_params)
    redirect_to index_path(@cocktail)
  end

  def delete
   @cocktail = Cocktail.find(params[:id])
   @cocktail.delete
   redirect_to index_path(@cocktail)
  end
end
