class Api::WorkoutsController < ApplicationController

def index
  @workouts = Workout.all
  render "index.json.jbuilder"
end

def show
  puts "======================#{current_user}"
  workouts = Workout.where(level: current_user.level.downcase) 
  @workout = workouts.sample
  puts "======================#{@workout}"
  # @workout = Workout.find_by(id:params[:id])
  render "show.json.jbuilder"

  end
end
