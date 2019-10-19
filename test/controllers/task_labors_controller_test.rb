require 'test_helper'

class TaskLaborsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_labor = task_labors(:one)
  end

  test "should get index" do
    get task_labors_url
    assert_response :success
  end

  test "should get new" do
    get new_task_labor_url
    assert_response :success
  end

  test "should create task_labor" do
    assert_difference('TaskLabor.count') do
      post task_labors_url, params: { task_labor: { delivery_date: @task_labor.delivery_date, labor_process_id: @task_labor.labor_process_id, task_description: @task_labor.task_description } }
    end

    assert_redirected_to task_labor_url(TaskLabor.last)
  end

  test "should show task_labor" do
    get task_labor_url(@task_labor)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_labor_url(@task_labor)
    assert_response :success
  end

  test "should update task_labor" do
    patch task_labor_url(@task_labor), params: { task_labor: { delivery_date: @task_labor.delivery_date, labor_process_id: @task_labor.labor_process_id, task_description: @task_labor.task_description } }
    assert_redirected_to task_labor_url(@task_labor)
  end

  test "should destroy task_labor" do
    assert_difference('TaskLabor.count', -1) do
      delete task_labor_url(@task_labor)
    end

    assert_redirected_to task_labors_url
  end
end
