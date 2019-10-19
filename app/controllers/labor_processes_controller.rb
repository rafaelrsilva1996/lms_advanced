class LaborProcessesController < ApplicationController
  before_action :set_labor_process, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!

  # GET /labor_processes
  # GET /labor_processes.json
  def index
    @labor_processes = LaborProcess.all
  end

  # GET /labor_processes/1
  # GET /labor_processes/1.json
  def show
  end

  # GET /labor_processes/new
  def new
    @labor_process = LaborProcess.new
  end

  # GET /labor_processes/1/edit
  def edit
  end

  # POST /labor_processes
  # POST /labor_processes.json
  def create
    @labor_process = LaborProcess.new(labor_process_params)

    respond_to do |format|
      if @labor_process.save
        format.html { redirect_to @labor_process, notice: 'Labor process was successfully created.' }
        format.json { render :show, status: :created, location: @labor_process }
      else
        format.html { render :new }
        format.json { render json: @labor_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /labor_processes/1
  # PATCH/PUT /labor_processes/1.json
  def update
    respond_to do |format|
      if @labor_process.update(labor_process_params)
        format.html { redirect_to @labor_process, notice: 'Labor process was successfully updated.' }
        format.json { render :show, status: :ok, location: @labor_process }
      else
        format.html { render :edit }
        format.json { render json: @labor_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /labor_processes/1
  # DELETE /labor_processes/1.json
  def destroy
    @labor_process.destroy
    respond_to do |format|
      format.html { redirect_to labor_processes_url, notice: 'Labor process was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_labor_process
      @labor_process = LaborProcess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def labor_process_params
      params.require(:labor_process).permit(:process_category, :process_number, :distribution_date, :stick, :court, :movements, :status, :client_id)
    end
end
