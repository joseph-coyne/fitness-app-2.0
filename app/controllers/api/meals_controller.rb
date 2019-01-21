class Api::MealsController < ApplicationController
  before_action :authenticate_user
  require "http"

  def index
    #create action to show users meals by default and using parameters to see all users meals (icebox)
    @meals = current_user.meals
    # if params[:search] == "all"
    #   @meals = Meal.all
    # end
    render "index.json.jbuilder"
  end

  def show
    @meal = current_user
    render "show.json.jbuilder"
  end

  def create
    @meal = Meal.create(
      name: params[:name].strip,
      meal_type: params[:meal_type].strip,
      recipe_instructions: params[:recipe_instructions].strip,
      user_id: current_user.id
    )

    if @meal.save # happy path
      #variable for params ingredient_id array frontend
      ingredients = params[:ingredients]
      #loop through each ingredient inlcuded in the DB
      #ingredients = ["chicken", "kale", "turkey"]
      # add .split(" ") after ingredient if you want to test this in insomnia
      ingredients.each do |ingredient|
        #if ingredient exists in DB
        db_ingredient = Ingredient.find_by(name: ingredient)
        if db_ingredient
          #add meal id and ingredient id to join table
          MealIngredient.create([
            {meal_id: @meal.id, ingredient_id: db_ingredient.id}
          ])
        else
          #third party API path if ingredient is not found in DB

          #API to get ingredient id
          nutritionix_data = HTTP.get("https://api.nutritionix.com/v1_1/search/#{ingredient}?results=0%3A20&cal_min=0&cal_max=50000&fields=item_name%2Cbrand_name%2Citem_id%2Cbrand_id&appId=#{ENV['API_ID']}&appKey=#{ENV['API_KEY']}").parse

          

          #store ingredient id 
          nutritionix_id = nutritionix_data["hits"][0]["_id"]

          # second API call to get nutrient values for ingredient
          nutrients = HTTP.get("https://api.nutritionix.com/v1_1/item?id=#{nutritionix_id}&appId=#{ENV['API_ID']}&appKey=#{ENV['API_KEY']}").parse

          # variables to store each nutrient value for DB
          protein = nutrients["nf_protein"].to_f 
          carbohydrates = nutrients["nf_total_carbohydrate"].to_f
          fat = nutrients["nf_total_fat"].to_f
          magnesium = nutrients["nf_magnesium_dv"].to_f
          zinc = nutrients["nf_zinc_dv"].to_f
          iron = nutrients["nf_iron_dv"].to_f
          folate = nutrients["nf_folate_dv"].to_f
          vitamin_d = nutrients["nf_vitamin_d_dv"].to_f

        
         
          # store ingredient name and nutrient values into ingredient table
          new_ingredient = Ingredient.create(
            name: ingredient, 
            protein: protein,
            carbohydrates: carbohydrates,
            fat: fat,
            magnesium: magnesium,
            zinc: zinc,
            iron: iron,
            folate: folate,
            vitamin_d: vitamin_d,
          )

          #add ingredient id to join table
          MealIngredient.create([
            {meal_id: @meal.id, ingredient_id: new_ingredient.id}
          ])
        end
      end
      render "show.json.jbuilder"
    else # sad path
      render json: { errors: @meal.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @meal = Meal.find(params[:id])
    @meal.name = params[:name] || @meal.name
    @meal.recipe_instructions = params[:recipe_instructions] || @meal.recipe_instructions
    if @meal.save 
      render "show.json.jbuilder"
    else
      render json: { errors: @meal.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    render json: {message: "Deleted Meal!"}
  end
  
end
