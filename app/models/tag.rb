class Tag < ApplicationRecord
	has_many :trainer_tags
	has_many :trainers, through: :trainer_tags
end
