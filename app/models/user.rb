class User < ApplicationRecord

  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :appointments, dependent: :destroy
  has_many :trainers, through: :appointments
  has_many :meals, dependent: :destroy
  has_many :trainer_meals
  has_many :trainers, through: :trainer_meals
  has_many :user_workouts, dependent: :destroy
  has_many :workouts,through: :user_workouts
  has_one_attached :avatar
  
  def full_name
	 first_name + " " + last_name
  end

  def calculated_progress
    completed = 0
    user_workouts.each do |workout|
      completed += workout.times_done
    end
    if completed > 30
      completed = 30

    end
    progress = completed * 100 / 30

  end 
  def badge_name
    progress = calculated_progress
    if progress >= 0 && progress < 10
      "Unpaid Intern"
    elsif progress >= 10 && progress < 20
      "Office Potatoe"
    elsif progress >= 20 && progress < 30
      "Coffee Boi"
    elsif progress >= 30 && progress < 40
      "Warehouse Wizard"
    elsif progress >= 40 && progress < 50
      "Ink Magician"
    elsif progress >= 50 && progress < 60
      "The Supplier"
    elsif progress >= 60 && progress < 70
      "Spreadsheet Warrior"
    elsif progress >= 70 && progress < 80
      "Sales Ninja"
    elsif progress >= 80 && progress < 90
      "Shitstorm Manager"
    elsif progress >= 90 && progress < 100
      "Chief Troublemaker"
    elsif progress == 100
      "President of Taking Credit"
      
    end
  end
end
