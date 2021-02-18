class Booking < ApplicationRecord
	phony_normalize :phone, default_country_code: 'PL'
  
	belongs_to :user

	enum status: [ :pending, :confirmed ]

	validates :phone, phony_plausible: true
	validates :user_id, presence: true
	validates :name, presence: true
end
