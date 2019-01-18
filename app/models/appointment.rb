class Appointment < ApplicationRecord
	belongs_to :trainer
	belongs_to :user
	has_many :appointment_items, dependent: :destroy
	has_many :items, through: :appointment_items, dependent: :destroy


	def strftime
		time.strftime("%A, %B %e at %l:%M %p") || time
	end
end
