class Workout < ApplicationRecord
  has_many :user_workouts
  has_many :users,through: :user_workouts
  
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
