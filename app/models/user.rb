class User < ApplicationRecord
	has_secure_password
	validates :email, presence: true, uniqueness: true
	has_many :appointments
	has_many :trainers, through: :appointments
	has_one_attached :image

	def user_name
		first_name + " " + last_name
	end
end
