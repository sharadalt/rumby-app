class SkoolYearsController < ApplicationController
  before_action :set_skool_year, only: %i[ show edit update destroy ]

  # GET /skool_years or /skool_years.json
  def index
    @skool_years = SkoolYear.all
  end

  # GET /skool_years/1 or /skool_years/1.json
  def show
  end

  # GET /skool_years/new
  def new
    @skool_year = SkoolYear.new
  end

  # GET /skool_years/1/edit
  def edit
  end

  # POST /skool_years or /skool_years.json
  def create
    @skool_year = SkoolYear.new(skool_year_params)

    respond_to do |format|
      if @skool_year.save
        format.html { redirect_to skool_year_url(@skool_year), notice: "Skool year was successfully created." }
        format.json { render :show, status: :created, location: @skool_year }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @skool_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skool_years/1 or /skool_years/1.json
  def update
    respond_to do |format|
      if @skool_year.update(skool_year_params)
        format.html { redirect_to skool_year_url(@skool_year), notice: "Skool year was successfully updated." }
        format.json { render :show, status: :ok, location: @skool_year }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @skool_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skool_years/1 or /skool_years/1.json
  def destroy
    @skool_year.destroy

    respond_to do |format|
      format.html { redirect_to skool_years_url, notice: "Skool year was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skool_year
      @skool_year = SkoolYear.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skool_year_params
      params.require(:skool_year).permit(:year, :teacher_id)
    end
end
