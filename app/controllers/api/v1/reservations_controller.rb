class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :update, :destroy]

  #show destroy update
  rescue_from ActiveRecord::RecordNotFound do |e|
    render json:{error: e.message}, status: :not_found
  end
  #create update
  rescue_from ActiveRecord::RecordInvalid do |e|
    render json:{error: e.message}, status: :unprocessable_entity
  end

  rescue_from Exception do |e|
    render json:{error: e.message}, status: :internal_error
  end

  def index
    @reservations = Reservation.movies
    render json: @reservations, status: :ok
  end

  def show
    @reservation = Reservation.movie(@reservation)
    render json: @reservation, status: :ok
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def update
    if @reservation.update(reservation_params)
      render json: @reservation, status: :ok
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @reservation.destroy
      msg = {:message => "Reservation #{@reservation.name} deleted."}
      render json: msg, status: :ok
    end
  end

  private
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    def reservation_params
      params.require(:reservation).permit(:name, :lastname, :identification, :email, :celphone, :movie_id)
    end
end
