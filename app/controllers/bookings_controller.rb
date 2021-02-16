class BookingsController < ApplicationController

	before_action :authenticate_user!

	def index
		@bookings = current_user.bookings.all
	end

	def create
		@booking = current_user.bookings.new(booking_from: :params[:booking_from], phone: :params[:phone])
		@booking.save
		redirect_to bookings_path
	end

	def update
	end

	def destroy
		Booking.find(params[:id]).destroy
		redirect_to bookings_path
	end

	def show
	end

	private

	def string_to_date
	end

end