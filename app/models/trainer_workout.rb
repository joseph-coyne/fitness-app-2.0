class TrainerWorkout < ApplicationRecord
  belongs_to :trainer
  belongs_to :workout
end
