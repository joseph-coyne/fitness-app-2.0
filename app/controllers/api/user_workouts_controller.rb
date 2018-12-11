class Api::WorkoutsController < ApplicationController
	def index
	  @workouts = Workout.all
	  render "index.json.jbuilder"
	end

	def show
	  workouts = Workout.where(level: current_user.level.downcase) 
	  @workout = workouts.sample
	  # @workout = Workout.find_by(id:params[:id])
	  render "show.json.jbuilder"

	end
end