class Trainer < ApplicationRecord
	has_secure_password
	validates :email, 
		presence: true, 
		uniqueness: true

  validates :password, 
  	:presence => true,
    :confirmation => true,
	  length: { in: 6..255 },
	  allow_nil: true
	
	has_many :meals, dependent: :destroy
  has_many :appointments
  has_many :users, through: :appointments
  has_many :trainer_tags
  has_many :tags, through: :trainer_tags
  has_many :workouts
  has_many :workouts, through: :trainer_workouts

  has_one_attached :avatar


	def full_name
		first_name + " " + last_name
	end

  def friendly_tags
	   tags.map { |tag| {name: tag.name, id: tag.id} }
  end
end
