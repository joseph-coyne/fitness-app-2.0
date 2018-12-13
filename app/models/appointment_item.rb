class AppointmentItem < ApplicationRecord
	belongs_to :appointment
	belongs_to :item
end
