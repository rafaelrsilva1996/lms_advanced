class TaskLaborsController < ApplicationController
  before_action :set_task_labor, only: [:show, :edit, :update, :destroy]

  # GET /task_labors
  # GET /task_labors.json
  def index
    @task_labors = TaskLabor.all
  end

  # GET /task_labors/1
  # GET /task_labors/1.json
  def show
  end

  # GET /task_labors/new
  def new
    @task_labor = TaskLabor.new
  end

  # GET /task_labors/1/edit
  def edit
  end

  # POST /task_labors
  # POST /task_labors.json
  def create
    @task_labor = TaskLabor.new(task_labor_params)

    respond_to do |format|
      if @task_labor.save
        format.html { redirect_to @task_labor, notice: 'Task labor was successfully created.' }
        format.json { render :show, status: :created, location: @task_labor }
      else
        format.html { render :new }
        format.json { render json: @task_labor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_labors/1
  # PATCH/PUT /task_labors/1.json
  def update
    respond_to do |format|
      if @task_labor.update(task_labor_params)
        format.html { redirect_to @task_labor, notice: 'Task labor was successfully updated.' }
        format.json { render :show, status: :ok, location: @task_labor }
      else
        format.html { render :edit }
        format.json { render json: @task_labor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_labors/1
  # DELETE /task_labors/1.json
  def destroy
    @task_labor.destroy
    respond_to do |format|
      format.html { redirect_to task_labors_url, notice: 'Task labor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_labor
      @task_labor = TaskLabor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_labor_params
      params.require(:task_labor).permit(:delivery_date, :task_description, :labor_process_id)
    end
end
