class ReservationsController < ApplicationController
    def index
      @reservations = Reservation.all
    end
    def new
      @reservation = Reservation.new
    end
    def create
      @reservation = current_user.reservations.new(reservation_params)
      if @reservation.save
        redirect_to reservations_path, notice: '予約日が保存されました！'
      else
        render :new
      end
    end
  
    private
  
    def reservation_params
      params.require(:reservation).permit(:date, :note)
    end
  end