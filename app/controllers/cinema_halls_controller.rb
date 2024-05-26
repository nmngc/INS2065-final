class CinemaHallsController < ApplicationController
  before_action :set_cinema_hall, only: %i[ show edit update destroy ]

  # GET /cinema_halls or /cinema_halls.json
  def index
    @cinema_halls = CinemaHall.all
  end

  # GET /cinema_halls/1 or /cinema_halls/1.json
  def show
  end

  # GET /cinema_halls/new
  def new
    @cinema_hall = CinemaHall.new
  end

  # GET /cinema_halls/1/edit
  def edit
  end

  # POST /cinema_halls or /cinema_halls.json
  def create
    @cinema_hall = CinemaHall.new(cinema_hall_params)

    respond_to do |format|
      if @cinema_hall.save
        format.html { redirect_to cinema_hall_url(@cinema_hall), notice: "Cinema hall was successfully created." }
        format.json { render :show, status: :created, location: @cinema_hall }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cinema_hall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cinema_halls/1 or /cinema_halls/1.json
  def update
    respond_to do |format|
      if @cinema_hall.update(cinema_hall_params)
        format.html { redirect_to cinema_hall_url(@cinema_hall), notice: "Cinema hall was successfully updated." }
        format.json { render :show, status: :ok, location: @cinema_hall }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cinema_hall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cinema_halls/1 or /cinema_halls/1.json
  def destroy
    @cinema_hall.destroy

    respond_to do |format|
      format.html { redirect_to cinema_halls_url, notice: "Cinema hall was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cinema_hall
      @cinema_hall = CinemaHall.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cinema_hall_params
      params.require(:cinema_hall).permit(:cinema_hall_id, :cinema_hall_name, :total_seats, :location_id)
    end
end
