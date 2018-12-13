json.array! @workouts.each do |workout|
   json.partial! "workout.json.jbuilder",workout: workout
 end