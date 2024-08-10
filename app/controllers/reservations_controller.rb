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
    def edit
    end
    def destroy
      @reservation = Reservation.find_by(id: params[:id])
        @reservation.destroy!
        respond_to do |format|
          format.html { redirect_to reservations_path, notice: "予約日を削除しました。" }
          format.json { head :no_content }
        end
    end
  
    private
  
    def reservation_params
      params.require(:reservation).permit(:date, :note)
    end
  end