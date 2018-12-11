json.partial! "meal.json.jbuilder", meal: @meal

json.ingredients do
  json.array! @meal.ingredients, partial: 'api/ingredients/ingredient', as: :ingredient
end