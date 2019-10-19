require 'test_helper'

class TaskAdministrativesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_administrative = task_administratives(:one)
  end

  test "should get index" do
    get task_administratives_url
    assert_response :success
  end

  test "should get new" do
    get new_task_administrative_url
    assert_response :success
  end

  test "should create task_administrative" do
    assert_difference('TaskAdministrative.count') do
      post task_administratives_url, params: { task_administrative: { administrative_process_id: @task_administrative.administrative_process_id, delivery_date: @task_administrative.delivery_date, task_description: @task_administrative.task_description } }
    end

    assert_redirected_to task_administrative_url(TaskAdministrative.last)
  end

  test "should show task_administrative" do
    get task_administrative_url(@task_administrative)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_administrative_url(@task_administrative)
    assert_response :success
  end

  test "should update task_administrative" do
    patch task_administrative_url(@task_administrative), params: { task_administrative: { administrative_process_id: @task_administrative.administrative_process_id, delivery_date: @task_administrative.delivery_date, task_description: @task_administrative.task_description } }
    assert_redirected_to task_administrative_url(@task_administrative)
  end

  test "should destroy task_administrative" do
    assert_difference('TaskAdministrative.count', -1) do
      delete task_administrative_url(@task_administrative)
    end

    assert_redirected_to task_administratives_url
  end
end
