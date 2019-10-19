class TaskAdministrativesController < ApplicationController
  before_action :set_task_administrative, only: [:show, :edit, :update, :destroy]

  # GET /task_administratives
  # GET /task_administratives.json
  def index
    @task_administratives = TaskAdministrative.all
  end

  # GET /task_administratives/1
  # GET /task_administratives/1.json
  def show
  end

  # GET /task_administratives/new
  def new
    @task_administrative = TaskAdministrative.new
  end

  # GET /task_administratives/1/edit
  def edit
  end

  # POST /task_administratives
  # POST /task_administratives.json
  def create
    @task_administrative = TaskAdministrative.new(task_administrative_params)

    respond_to do |format|
      if @task_administrative.save
        format.html { redirect_to @task_administrative, notice: 'Task administrative was successfully created.' }
        format.json { render :show, status: :created, location: @task_administrative }
      else
        format.html { render :new }
        format.json { render json: @task_administrative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_administratives/1
  # PATCH/PUT /task_administratives/1.json
  def update
    respond_to do |format|
      if @task_administrative.update(task_administrative_params)
        format.html { redirect_to @task_administrative, notice: 'Task administrative was successfully updated.' }
        format.json { render :show, status: :ok, location: @task_administrative }
      else
        format.html { render :edit }
        format.json { render json: @task_administrative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_administratives/1
  # DELETE /task_administratives/1.json
  def destroy
    @task_administrative.destroy
    respond_to do |format|
      format.html { redirect_to task_administratives_url, notice: 'Task administrative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_administrative
      @task_administrative = TaskAdministrative.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_administrative_params
      params.require(:task_administrative).permit(:delivery_date, :task_description, :administrative_process_id)
    end
end
