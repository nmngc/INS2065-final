class CinemaSeatsController < ApplicationController
  before_action :set_cinema_seat, only: %i[ show edit update destroy ]

  # GET /cinema_seats or /cinema_seats.json
  def index
    @cinema_seats = CinemaSeat.all
  end

  # GET /cinema_seats/1 or /cinema_seats/1.json
  def show
  end

  # GET /cinema_seats/new
  def new
    @cinema_seat = CinemaSeat.new
  end

  # GET /cinema_seats/1/edit
  def edit
  end

  # POST /cinema_seats or /cinema_seats.json
  def create
    @cinema_seat = CinemaSeat.new(cinema_seat_params)

    respond_to do |format|
      if @cinema_seat.save
        format.html { redirect_to cinema_seat_url(@cinema_seat), notice: "Cinema seat was successfully created." }
        format.json { render :show, status: :created, location: @cinema_seat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cinema_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cinema_seats/1 or /cinema_seats/1.json
  def update
    respond_to do |format|
      if @cinema_seat.update(cinema_seat_params)
        format.html { redirect_to cinema_seat_url(@cinema_seat), notice: "Cinema seat was successfully updated." }
        format.json { render :show, status: :ok, location: @cinema_seat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cinema_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cinema_seats/1 or /cinema_seats/1.json
  def destroy
    @cinema_seat.destroy

    respond_to do |format|
      format.html { redirect_to cinema_seats_url, notice: "Cinema seat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cinema_seat
      @cinema_seat = CinemaSeat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cinema_seat_params
      params.require(:cinema_seat).permit(:cinema_seat_id, :cinema_seat_number, :seat_type, :cinema_hall_id)
    end
end
