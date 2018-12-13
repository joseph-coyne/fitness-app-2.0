class Workout < ApplicationRecord
  def index
    @workouts = Workout.all
    render "index.json.jbuilder"
  end

  def show
    workouts = Workout.where(level:current_user.level.downcase) 
    @workout = workouts.sample
    render "show.json.jbuilder"
  end
end
