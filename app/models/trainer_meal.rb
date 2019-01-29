class TrainerMeal < ApplicationRecord
  belongs_to :trainer
  belongs_to :meal
  belongs_to :user
end
