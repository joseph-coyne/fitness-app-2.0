json.array! @user_workouts.each do |user_workout|
   json.partial! "user_workout.json.jbuilder",user_workout: user_workout


 end