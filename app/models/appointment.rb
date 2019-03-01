class Appointment < ApplicationRecord
	belongs_to :trainer
	belongs_to :user
	has_many :appointment_items, dependent: :destroy
	has_many :items, through: :appointment_items, dependent: :destroy


	def strftime
		time.strftime("%A, %B %e at %l:%M %p") || time
	end

	def trainer_full_name
		trainer.first_name + " " + trainer.last_name
		
	end
end
