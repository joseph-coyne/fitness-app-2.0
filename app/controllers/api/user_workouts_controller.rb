class Api::UserWorkoutsController < ApplicationController
  def show 
    @user_workout = UserWorkout.find_by(id:params[:id])
    render "show.json.jbuilder"
  end
  def create 
    @user_workout = UserWorkout.find_by(user_id: current_user.id, workout_id: params[:workout_id])
    # if user_workout exists..theyve completed the workout..increase times done of user_workout by 1
    if @user_workout
      @user_workout.times_done += 1
      @user_workout.save
      render "show.json.jbuilder"
    else
      @user_workout = UserWorkout.create(
        user_id: current_user.id,
        workout_id: params[:workout_id],
        times_done: 1
      )
      if @user_workout.save
        render "show.json.jbuilder"
      else
        render json: {errors: @user_workout.errors.full_messages}, status: :unprocessable_entity 
      end
    end
    
  end
end