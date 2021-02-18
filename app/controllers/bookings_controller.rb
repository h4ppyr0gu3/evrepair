class BookingsController < ApplicationController

	before_action :authenticate_user!

	def index
		if current_user.role = "admin_permissions"
			@bookings = Booking.all
		else
			@bookings = current_user.bookings.all
		end
	end

	def create
		date = params[:booking_from]
		date = DateTime.parse(date)
		phone = params[:phone]
		@booking = current_user.bookings.new(booking_from: date, booking_to: date, phone: phone, name: params[:name])
		# if @booking.booking_from > @booking.booking_to
		# 	redirect_to new_booking_path, flash: { danger: "Invalid dates"}
		# elsif @booking.phone.length > 9 || @booking.phone.length < 9
		# 	redirect_to new_booking_path, flash: { danger: "Invalid phone number"}
		# elsif @booking.name.empty?
		# 	redirect_to
		if @booking.save
			redirect_to bookings_path, flash: { success: "booking saved"}
		else
			redirect_to new_booking_path, flash: { danger: "the form contains errors"} 
			
		end
	end

	def update

		updated_name = params[:name]
		updated_date = params[:booking_from]
		updated_phone = params[:phone]

		@update = Booking.find(params[:id])

		@booking = Booking.update(booking_from: updated_date, name: updated_name, phone: updated_phone)

		redirect_to bookings_path



		# date = params[:booking_from]
		# date = DateTime.parse(date)
		# phone = params[:phone]
		# @booking = current_user.bookings.update(booking_from: date, booking_to: date, phone: phone, name: params[:name])
		
		# @booking = Booking.find_by(params[:id])
		# @booking.update(params[:bookings])

	end

	def destroy
		Booking.find(params[:id]).destroy
		redirect_to bookings_path
	end

	def show
	end

	private

	# def current_id


	# def errors

	# 	if @booking.booking_from > @booking.booking_to
			
	# 	elsif @booking.phone.length > 9 || @booking.phone.length < 9
	# 		redirect_to new_booking_path, flash: { danger: "Invalid phone number"}
	# end

end