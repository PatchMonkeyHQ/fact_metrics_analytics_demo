class Dimension::DatesController < ApplicationController
  before_action :set_dimension_date, only: %i[ show edit update destroy ]

  # GET /dimension/dates or /dimension/dates.json
  def index
    @dimension_dates = Dimension::Date.all
  end

  # GET /dimension/dates/1 or /dimension/dates/1.json
  def show
  end

  # GET /dimension/dates/new
  def new
    @dimension_date = Dimension::Date.new
  end

  # GET /dimension/dates/1/edit
  def edit
  end

  # POST /dimension/dates or /dimension/dates.json
  def create
    @dimension_date = Dimension::Date.new(dimension_date_params)

    respond_to do |format|
      if @dimension_date.save
        format.html { redirect_to @dimension_date, notice: "Date was successfully created." }
        format.json { render :show, status: :created, location: @dimension_date }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dimension_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dimension/dates/1 or /dimension/dates/1.json
  def update
    respond_to do |format|
      if @dimension_date.update(dimension_date_params)
        format.html { redirect_to @dimension_date, notice: "Date was successfully updated." }
        format.json { render :show, status: :ok, location: @dimension_date }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dimension_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dimension/dates/1 or /dimension/dates/1.json
  def destroy
    @dimension_date.destroy!

    respond_to do |format|
      format.html { redirect_to dimension_dates_path, status: :see_other, notice: "Date was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dimension_date
      @dimension_date = Dimension::Date.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dimension_date_params
      params.require(:dimension_date).permit(:calendar_week_number, :date, :day_of_week, :days_in_month, :full_description, :month, :month_name, :quarter, :week_number, :weeks_in_month, :year)
    end
end
