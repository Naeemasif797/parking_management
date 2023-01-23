class BookingsController < ApplicationController

def  index

@bookings =  Booking.all

end

def my_bookings
@user =  User.find(params[:id])
@bookings = @user.bookings
	
end

def new
	@slot = Slot.find(params[:id])
    @booking = Booking.new

end

def create
 @booking = Booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to mybookings_url(booking_params[:user_id]), notice: "booking created  successfully" }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
end

 private
    # Use callbacks to share common setup or constraints between actions.
   

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:booking_from, :booking_to, :slot_id, :user_id)
    end

end
