json.array! @ingredients.each do |ingredient|
  json.partial! "ingredient.json.jbuilder", ingredient: ingredient
end