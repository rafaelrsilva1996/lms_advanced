class AdministrativeProcessesController < ApplicationController
  before_action :set_administrative_process, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  
  # GET /administrative_processes
  # GET /administrative_processes.json
  def index
    @administrative_processes = AdministrativeProcess.all
  end

  # GET /administrative_processes/1
  # GET /administrative_processes/1.json
  def show
  end

  # GET /administrative_processes/new
  def new
    @administrative_process = AdministrativeProcess.new
  end

  # GET /administrative_processes/1/edit
  def edit
  end

  # POST /administrative_processes
  # POST /administrative_processes.json
  def create
    @administrative_process = AdministrativeProcess.new(administrative_process_params)

    respond_to do |format|
      if @administrative_process.save
        format.html { redirect_to @administrative_process, notice: 'Administrative process was successfully created.' }
        format.json { render :show, status: :created, location: @administrative_process }
      else
        format.html { render :new }
        format.json { render json: @administrative_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administrative_processes/1
  # PATCH/PUT /administrative_processes/1.json
  def update
    respond_to do |format|
      if @administrative_process.update(administrative_process_params)
        format.html { redirect_to @administrative_process, notice: 'Administrative process was successfully updated.' }
        format.json { render :show, status: :ok, location: @administrative_process }
      else
        format.html { render :edit }
        format.json { render json: @administrative_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administrative_processes/1
  # DELETE /administrative_processes/1.json
  def destroy
    @administrative_process.destroy
    respond_to do |format|
      format.html { redirect_to administrative_processes_url, notice: 'Administrative process was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrative_process
      @administrative_process = AdministrativeProcess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrative_process_params
      params.require(:administrative_process).permit(:benefit_type, :der, :age, :contribution_time, :movements, :status)
    end
end
