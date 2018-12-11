class Api::IngredientsController < ApplicationController

    def index
      @ingredients = Ingredient.all
      render "index.json.jbuilder"
    end

    def show
      @ingredient = Ingredient.find(params[:id])
      render "show.json.jbuilder"
    end
    
  
end
