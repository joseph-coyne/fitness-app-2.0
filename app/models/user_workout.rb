class UserWorkout < ApplicationRecord
  belongs_to :user 
  belongs_to :workout
end
